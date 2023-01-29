program qq;
const n=4
m=4
var a:array[1..N,1..M] of integer;
    i,j,k,max:integer;
begin
for i:=1 to n do
for j:=1 to m do
begin
a[i,j]:=-10+random(20);
end;
then for i:=1 to n do
for j:=1 to m do
k:=k+a[i,j];
if k>max
then max:=k;
end.