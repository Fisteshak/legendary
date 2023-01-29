program qq;
var s:string;
i,k:integer;
begin
writeln ('Введите предложение');
readln (s);
s:=s+' ';
k:=0;
repeat
i:=pos (' ',s);
delete (s,1,i);
if i = 3
then inc(k);
until s='';
writeln (k);
end.