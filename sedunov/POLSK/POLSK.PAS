{$A+,B+,D+,E+,F+,G+,I+,L+,N+,O+,P-,Q+,R+,S+,T-,V-,X+}
{$M 16384,0,655360}
Program ObrantPolsk;
uses crt;
Type
    Node=Record
           Number:real; {���祭�� �᫠}
           Lit:char     {������ (+,-,*,/) ��� 'A' - �᫮}
         end;
    Mass=array[1..255] of Node;
Var st:string[255];
    m:mass;
    Numb:integer;

Procedure GetLex(Var st:string; Var m:mass; Var numb:integer);
var i:integer;  {��१��� �� ��ப� St ���� ���ᥬ� � ����頥� �� � ���ᨢ �}
    x:string;   {Numb - ������⢮ ������⮢ � ᯨ᪥ �}
    Code:word;
begin
  While st[1]=' ' do {㤠����� ��譨� �஡����}
   delete(st,1,1);
  case st[1] of
   '+','-','*','/': begin
                     inc(Numb);
                     m[Numb].Lit:=st[1]; m[numb].Number:=0;
                     delete(st,1,1)
                    end;
   '0'..'9': begin
              i:=1;
              repeat
                inc(i);
              until not(st[i] in ['0'..'9','.']);
              inc(Numb);
              m[Numb].Lit:='A';
              x:=copy(st,1,i-1);
              Val(x,m[numb].Number,Code);
              delete(st,1,i-1)
             end;
  end;
end;

Function GetNumber(i:integer):Real;
begin
  if m[i].lit='A'  {�᫨ �� �᫮}
  then GetNumber:=m[i].Number {� ������ ��� ���祭��}
  else begin  {���� ᮮ���� �� �訡��}
         Writeln('�訡�� ��ࠡ�⪨ ���ᨢ� �!'#7);
         Halt(1) {�������� ࠡ���}
       end
end;

procedure DelList(i:integer; Var m:mass; var Numb:integer);
{������ � ᯨ᪥ � ������� � ����஬ i}
var k:integer;
begin
   dec(Numb);
   for k:=i to Numb do
     m[k]:=m[k+1]
end;

begin
   writeln('������ ��䬥��᪮� ��ࠦ����');
{   Readln(st);}
   st:='11.8+34.567  -  45.8*22';

   Numb:=0;
   While St<>'' do {������ ��ࠦ����: ��७�� ��� �� ��ப� St � ���ᨢ m}
     begin
       GetLex(st,m,Numb);
     end;
   {����� ����室��� ॠ�������� ������ ��ॢ��� ��䬥��᪮�� ��ࠦ����,
   ���஥ �࠭���� � ᯨ᪥ �, � ������ ������� ������}

 {����� ����室��� ���᫨�� ���祭�� ��䬥��᪮�� ��ࠦ����: ��ॢ��������
  � ������ ������� ������}
   readkey;
end.