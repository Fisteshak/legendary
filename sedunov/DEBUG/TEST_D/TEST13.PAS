program test13;
Const N=10;
Type mass=array[1..N] of integer;
var m:mass;
    i,k,x:integer;

procedure Print;
var i:integer;
begin
  for i:=1 to n do
    write(m[i],' ');
  writeln
end;

begin
   randomize;
   for i:=1 to N do
     m[i]:=random(100);
   print;
   Writeln('Введите целое положительное число');
   Readln(k);
   While k>0 do
    begin
      dec(k);
      x:=m[1];
      for i:=2 to n do
        m[i]:=m[i+1];
      m[N]:=x
    end
end.