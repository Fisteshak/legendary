program monopolizatsiya;
const max=10;
var a:array[1..max] of integer;
i,c:integer;
function first (n:integer):integer;
begin
     if a[n]<0
     then first:=n
     else begin
     if n<max
     then first:=first(n-1)
     else first:=0;
     end;
end;
begin
randomize;
for i:=1 to 10
do begin a[i]:=random (100)-50;
first(i);
writeln (a[i]);
end;
c:=first(i);
writeln(c);
readln;
end.