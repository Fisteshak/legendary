program outputin;
type mass = array [1..20] of integer;
var i,n,x,z,b:integer;
f:text;
a:mass;
fe:boolean;
begin
assign (f,'input.pas');
reset(f);
n:=1;
while  (not eof(f) and (n<20)) do begin
readln (f,x);
a[i]:=x;
end;
close (f);
z:=n;
fe:=true;
for i:=1 to z-1 do begin
if a[i]>a[i+1]
then b:=a[i];
a[i]:=a[i+1];
a[i+1]:=b;
fe:=false;
dec (z);
end;
for i:=1 to 20 do
writeln (a[i]);
readln;
end.