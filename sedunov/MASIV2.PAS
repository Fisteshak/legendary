program chorny2;
const n=10;
type mass = array [1..N] of integer;
var A: mass; i,e,c: integer;
begin
c:=Random(10)+1;
a[i]:=a[i]-c;
for i:=1 to N-round(N/2)-1 do
begin
e:=a[n+1-i];
a[n+1-i]:=a[i];
a[i]:=a[N-Round(n/2)-i];
end;
for i:= N to N-round(N/2)+1 do
begin
c:=a[i];
a[i]:=a[n+1-i];
a[n+1-i]:=c;
end;
for i:=1 to N do
writeln (a[i]);
]end.