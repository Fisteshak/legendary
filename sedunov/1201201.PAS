program schitatizapisat;
var f:file of integer;
n,i:integer;
begin
assign (f, 'input.pas');
reset(f);
n:=8;
for i:=1 to n do
begin
read (f,n);
write (n,' ');
end;
close (f);
readln;
end.