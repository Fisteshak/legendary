program test7;
type mass=array[1..7] of integer;
var m:mass;
    n,i,z,k,s,t:integer;
begin
  writeln('Введите 7 чисел');
  n:=7;
  for i:=1 to n do
   readln(m[i]);
  k := 0;
  while k <> n do
  begin
    s := k + 1; t := k + 1;
    while t<>n do
     begin
      t := t + 1;
      if m[t] < m[s]
      then s := t;
     end;
    z:=m[s]; m[s]:=m[k+1]; m[k+1]:=z; {*}
    k := k + 1;
  end;
 for i:=1 to n do
   write(m[i],' ')
end.
