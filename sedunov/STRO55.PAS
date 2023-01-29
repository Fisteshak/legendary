program newstrok;
var s,ss:string;
i,k:integer;
begin
writeln ('Введите предложение');
readln (s);
s:=s+' ';
k:=0;
repeat
i:=Pos(' ',s);
if i=4
then ss:=copy (s,1,i);
delete (s,1,i);
until s='';
writeln (ss);
end.
