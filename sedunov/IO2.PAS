program oaoammm;
var x,y,z,e: integer;
begin
writeln ('Введите номер месяца');
readln (x);
case x of
2: e:=28-x;
4,6,9,11: e:=30-x;
1,3,5,7,8,10,12: e:=31-x;
else e:=-1
end;
begin
repeat
x:=x+1;
case x of
2: y:=28;
4,6,9,11: y:=30;
1,3,5,7,8,10,12: y:=31;
end;
e:=e+x;
until x=12;
if y>0
then begin writeln ('Введите номер дня');
readln (z);
writeln ('До Нового года осталось',e,'дней');
