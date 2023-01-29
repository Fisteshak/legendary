program test14;
Const N=10;
Type mass=array[1..N] of integer;
Const m:mass=(-2, 7, -11, 99, -22, 198, -5 ,-9, 3, -70);
var  i,k,x:integer;
     f:boolean;
begin
  f:=true;
  for i:=1 to N-1 do
    if m[i]*m[i+1]>=0
    then f:=false
    else f:=true;
  if f
  then writeln('Верно!')
  else writeln('Неверно!')
end.