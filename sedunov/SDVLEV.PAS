program sdvig;
const N=5;
type mass = array [1..N] of integer;
var A: mass; e,i:integer;
begin for i:=1 to N do
readln (a[i]);
for i:=1 to n do
begin
e:=a[i];
a[i]:=a[i+1];
a[i+1]:=e;
end;
for i:=1 to N do
writeln (a[i]);
end.