program masiv44;
const n=10;
type mass = array [1..n] of integer;
var A: mass;
i,z,b: integer;
f: boolean;
begin
for i:=1 to n do
begin a[i]:= random (9900)+100;
writeln ('a[',i,']=',a[i]);
end;
z:=N;
repeat
f:=true;
for i:=1 to z-1 do
if a[i+1]>a[i]
then begin
b:=a[i];
a[i]:=a[i+1];
a[i+1]:=b;
f:=false;
end;
until f;
for i:=1 to N do
writeln ('a[',i,']=',a[i]);
readln;
end.