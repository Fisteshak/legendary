{$A+,B+,D+,E+,F+,G+,I+,L+,N+,O+,P-,Q+,R+,S+,T-,V-,X+}
{$M 16384,0,655360}
Program ObrantPolsk;
uses crt;
const max=100;
type tStack=array[1..max] of char;
var S:tStack;
type tP=array[1..max] of char;
var p:tP;
top,r,i:integer;
n:char;
Type
    Node=Record
           Number:real;
           Lit:char
         end;
    Mass=array[1..255] of Node;
Var st:string[255];
    m:mass;
    Numb:integer;
function nextchar:char;
begin
nextchar:=st[1];
delete (st,1,1);
end;
function pr(n:char):integer;
begin
case n of
'+','-': pr:=1;
'*','/': pr:=2;
'A'..'Z': pr:=3;
'#': pr:=0;
end;
end;
function rang(t:char):integer;
begin
case t of
'+','-','*','/': rang:=-1;
'A'..'Z': rang:=1;
end;
end;
Procedure GetLex(Var st:string; Var m:mass; Var numb:integer);
var i:integer;
    x:string;
    Code:word;
begin
  While st[1]=' ' do
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
  if m[Numb].lit='A'
  then GetNumber:=m[i].Number
  else begin
         Writeln('Ошибка обработки массива м!'#7);
         Halt(1)
       end;
end;
procedure DelList(i:integer; Var m:mass; var Numb:integer);
var k:integer;
begin
   dec(Numb);
   for k:=i to Numb do
     m[k]:=m[k+1]
end;
begin
     r:=1;
     writeln('Введите арифметическое выражение');
     st:='11.8+34.567  -  45.8*22';
     Numb:=0;
             While ST<>'' do
             begin
         GetLex(st,m,Numb);
             end;
     top:=1;
     s[top]:='#';
     i:=0;
     n:=nextchar;
repeat
         while pr(n)<=pr(s[top]) do begin
            dec(top); inc(i); n:=m[numb].lit; r:=r+rang(n);
            if r<1 then writeln ('некорректно');
      end;
      N:=s[top];inc(top);  r:=r+rang(n);
      n:=nextchar;
until n='#';
while s[top]<>'#' do begin
      N:=s[top]; dec(top); inc(i); r:=r+rang(n);
      if r<1 then writeln ('некорректно');
end;
      if r=1 then writeln (m[numb].lit)
             else writeln ('некорректно');
dellist(i,m,numb);
readkey;
readln;
end.