program exe;
var s:string;
e,n:integer;
begin
writeln ('������ �������� 䠩�� � ��� �ଠ�');
readln (s);
e:=Length(s);
n:=pos ('.',s);
delete (s,n,e);
insert('.exe',s,n);
writeln (s);
end.