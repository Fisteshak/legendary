program dryndryn;
const max=10;
var d:array [1..max] of integer;
i,n:integer;
c:boolean;
function otriz(n:integer):boolean;
var m:integer;
begin
if n=1 then otriz:=false
else m:=if m>0   and otriz(n-1);
end;
begin
randomize;
for i:=1 to 5 do
begin
d[i]:=random(100)-50;
writeln (d[i]);
end;
c:=otriz(n);
writeln(c);
readln;
end.