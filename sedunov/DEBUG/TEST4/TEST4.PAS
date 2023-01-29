program test4;
var x:integer;
    c,i:integer;
begin
  i:=0;
  Writeln('Введите целое число');
  Readln(x);
  repeat
    c:=x mod 10;
    i:=i+c;
    c:=x div 10
  until x div 10=0;
  Writeln(i)
end.