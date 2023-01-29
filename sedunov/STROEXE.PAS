program exe;
var s:string;
e,n:integer;
begin
writeln ('Введите название файла и его формат');
readln (s);
e:=Length(s);
n:=pos ('.',s);
delete (s,n,e);
insert('.exe',s,n);
writeln (s);
end.