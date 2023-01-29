program test15;
Const N=10;
Type mass=array[1..N] of integer;
Const m:mass=(-2, 7, -11, 99, -22, 198, -5 ,-9, 3, -70);
var  i,x,p1,p2,p3:integer;
     f:boolean;
begin
  f:=false;
  for i:=1 to n do
    begin
      x:=m[i];
      p1:=1; p2:=1;
      repeat
        p3:=p2+p1;
        p2:=p3; p1:=p2
      until p3>=x;
      if (x=p1) or (x=p3)
      then f:=true
      else f:=false
    end;
  if f
  then writeln('Верно!')
  else writeln('Неверно!')
end.