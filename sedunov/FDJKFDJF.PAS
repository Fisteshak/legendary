program StaroeSovetskoeSredstvo;
var f:text;
    n:integer;
    s:string;
begin
assign (f,'KOROCHE.pas');
reset (f);
while not eof(f) do
begin
readln (f,s);
n:=pos ('Короче',s);
if n<>0
then
delete (s,n,7);
end;
end.