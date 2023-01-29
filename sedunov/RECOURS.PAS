program pyatyielement;
const n=6;
var i,m: integer;
var a: array[1..n] of integer;
procedure max(n:integer; var m:integer);
begin
if n=1 then m:=a[n]
else
begin
max (n-1,m);
if a[n]>m then m:=a[n];
end;
end;
function max2(n:integer):integer;
begin
if n=1 then max2:=a[n]
else begin
if max2(n)=m[1] then
begin
randomize;
for i:=1 to n do begin
a[i]:=random(10)+1;
writeln (a[i]);
end;
readln;
writeln (m);
end.