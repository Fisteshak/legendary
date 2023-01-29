program qq;
const n=1
m=1
type matr = array [1..n,1..m] of integer;
var a:matr;
s:boolean;
    i,j,k:integer;
begin
     writeln;
     for i:=1 to n do
     begin
     for j:=1 to m dp
     begin
     a[i,j]:= random (20);
     write(a[i,j]:3);
     end;
     writeln;
     end;
writeln;
for i:=1 to N do
    for j:=1 to M do
    if a[i,j]-a[i,j+1]<>a[i,j+1]-a[i,j+2]
    end;