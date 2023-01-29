program test2;
var i:integer;
    x,m:real;
begin
  Writeln('Введите 7 произвольных чисел:');
  m:=0;
  for i:=1 to 7 do
   begin
    Readln(x);
    if x<0
    then if x*m=0
         then m:=x  {*}
         else if x>m   {**}
              then m:=x
     end;
    writeln(m:0:2); {***}
end.