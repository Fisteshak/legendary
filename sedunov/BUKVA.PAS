program bukv;
function minusbukva(s:string;a:char):string;
var i: integer;
begin
s:=s+' ';
for i:=1 to length(s) do
begin
if (s[i]=a) and (s[i-1]=' ') or (i=1)
then delete (s,i,pos(' ',s));
end;
minusbukva:=s;
end;
var s:string;a:char;
begin
readln (s);
readln (a);
minusbukva (s,a);
writeln (minusbukva (s,a));
end.