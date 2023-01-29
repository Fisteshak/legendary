program qq;
const n=3;
      m=4;
type matr=array[1..n,1..m] of integer;
var a:matr;
    i,j,maxi,mini,maxj,minj,max,min:integer;
begin
for i:=1 to n do
    for j:=1 to m do
    a[i,j]:=-10+random(20);
    for i:=1 to n do
    begin
         for j:=1 to n do
         write (a[i,j]:5);
         writeln
    end;
mini:=1;
minj:=1;
maxi:=1;
maxj:=1;
max:=a[1,1];
min:=a[1,1];
for i:=1 to N do
for j:=1 to N do
begin
if a[i,j]> max
then begin
maxj:=j;
maxi:=i;
end;
if a[i,j]<min
then
mini:=i;
minj:=j;
end;
writeln ('Максимальное значение'-[maxi,maxj] ',=,' max);
writeln ('Минимальное значение'-[mini,minj] ',=,' min);
Readln;
end.