Program Xafman;
Type  Ref=^Node;
      Node=Record  {����� ��� ����஥��� ��ॢ� ��䬥��}
            Lit:char;
            Number:word;
            Left, Right:Ref;
          end;
     tChast=array[1..256] of Ref; {���ᨢ ��� ����஥��� ��ॢ� ��䬥��}
     tStr=string[15];
     tCode=array[#0..#255] of tStr;
Var Ch:tChast;
    Numb:integer;{������⢮ ����쥢 � ���ᨢ� Ch}
    Elem:ref;
    Code:tCode;
    var m:array [1..255] of integer;
    var a:char;
    F:FILE OF char;
    b:integer;
    fout:file of integer;
procedure LoadFile(n:string; var Numb:integer; Var Ch:tChast);
{����㧪� ������ �� 䠩�� � ������ N � �����饭�� ������ � ���ᨢ� Ch}
Type mass=array[#0..#255] of word;
var  f:file of char;
     m:mass;
     a:char;
begin
   assign(f,'slava.pas');
   reset(f);
   fillchar(m,sizeof(m),0);
   while not eof(f) do
     begin
       read(f,a);inc(m[a])
     end;
   close(f);
   Numb:=0;
   for a:=#0 to #255 do
     if m[a]<>0
     then begin
            inc(Numb);
            New(Ch[numb]);
            Ch[numb]^.Lit:=a;
            Ch[numb]^.Number:=m[a];
            Ch[numb]^.Left:=nil;Ch[numb]^.Right:=nil;
          end;
end;

Procedure Sort(Var Ch:tChast);{��楤�� ���஢�� ���ᨢ� Ch �� �뢠���}
begin                         {���祭�� ���� Number}
end;

procedure CalcCode(Root:ref;s:tStr);
begin
  if (Root^.left=nil)and(Root^.Right=nil){�᫨ �� "����"}
  then begin
          {��������� ��� ���}
         Code[Root^.Lit]:=s
       end
  else begin
         if (Root^.left<>nil) {�᫨ ���� ����� �����ॢ�, � ᬥ������ �㤠}
         then CalcCode(Root^.left,s+'0');
         if (Root^.Right<>nil){�᫨ ���� �ࠢ�� �����ॢ�, � ᬥ������ �㤠}
         then CalcCode(Root^.Right,s+'1')
       end
end;

procedure CreatCoding(Root:Ref; var Code:tCode);{����ந�� ���ᨢ ����஢��}
{Root - ��७� ��ॢ� ��䬥��, Code - ���ᨢ � ����஢��� �������
ᨬ���� � ���㫥�� ������⢮� �宦�����}
Begin
  FillChar(Code,SizeOf(Code),0);{���㫨�� ���ᨢ}
  CalcCode(Root,'');
end;
procedure CodeFile(Name:string;Const Code:tCode);
var f:File of char;{�室��� 䠩�}
    h:file of byte;{��室��� 䠩�}
Begin

end;
Function DecToBin(var x,r:integer):string;
var s:string; y:integer;c:char;
begin
s:='';
repeat
y:=x mod r;
if y<=9
then c:=chr(y+ord('0'))
else c:=chr(y-20+ord('a'));
s:=c+s;
x:=x div r;
until x=0;
dectobin:=s;
end;
Function BinToDec(var x:byte):string;
var i:integer;s:string;
begin
x:=0;
for i:=1 to length(s) do
x:=x*2+(ord(s[i])-ord('0'));
end;
Procedure CopyFile(s:string);
var x:integer;
begin
s:='';
    while not eof(f) do
    begin
    read (f,a);
    s:=s+Code[a];
    if length(s)>=8 then begin
    {b:=BinToDec(copy(s,1,8));}
    Delete(s,1,8);
    write(fOut,x);
    end;
    end;
    end;
Begin
    LoadFile('a.txt',Numb,Ch);{���� ������ �� 䠩��}
    {����஥��� ��ॢ� �䬥��}
    While Numb>1 do
      begin
         Sort(Ch);{�����㥬 ���ᨢ ���� �宦����� ᨬ����� �� ��a���}
         New(Elem);  {������� ����� �����}
         Elem^.Left:=Ch[Numb];   {"��楯�塞" ��� ����� � �������訬 ��ᮬ}
         Elem^.Right:=Ch[Numb-1];
         Dec(Numb);
         Ch[Numb]:=Elem; {����� ����� ࠧ��頥� � ���ᨢ�}
      end;
    {������ ���ᨢ Ch[1] ᮤ�ন� ��ॢ� ��䬥��}
    {�� �⮬� ��ॢ� ����室��� ����ந�� ���ᨢ ����஢��}
    CreatCoding(ch[1],Code);{����ந�� ���ᨢ ����஢��}
    numb:=0;
    for a:=#0 to #255 do
    {if m[a]<>0}
    {then begin }inc (numb); NEW (CH[NUMB]);


    {�� ����஥���� ⠡��� ����஢�� ����室��� ������஢��� �室��� 䠩�}

    CodeFile('slava.pas',Code);
    READLN;
end.