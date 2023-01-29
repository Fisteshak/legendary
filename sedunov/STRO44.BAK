program qq;
var s,s1:string;
i:integer;
begin
writeln ('Введите предложение');
readln (s);
s:=s+'';
i:=0;
repeat
i:=pos('',s);
if s[1]<>s[i-1]
then s1:=s1+Copy (s,1,i);
delete (s,1,i);
until s='';
writeln (s1);
end.