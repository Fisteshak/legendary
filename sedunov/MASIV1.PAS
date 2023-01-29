program cherny;
const n=10;
type mass=array [1..n] of integer;
var a:mass;
var i,k: integer;
begin k:=n;
for i:=1 to n do
read (a[i]);
for i:=1 to n do
begin
if (n/i)<2
then begin
k:=a[n+1-i];
a[n+1-i]:=a[i];
a[i]:=k;
end;
end;
for i:=1 to n do
write (a[i]:4);
end.