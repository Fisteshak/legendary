program qq;
const n=3;
      m=4;
type matr=array[1..n,1..m] of integer;
var a:matr;
    i,j,k:integer;
begin
for i:=1 to N do
for j:=1 to M do
a[i,j]:=random(20)+5;
for i:=1 to N do
for j:=1 to M do
write (a[i,j],' ');
writeln;
for i:=1 to N do
k:=0;
    for j:=1 to M do
    begin
    if a[i,j] mod 2 = 1
    then k:=k-1;
    if a[i,j] mod 2 = 0
    then k:=k+1;
    end;
    if j=M
    then
    if k>0
    then writeln ('����� �����');
    if k<0
    then writeln ('����� �������');
    if k=0
    then writeln ('��஢��');
    readln;
    end.