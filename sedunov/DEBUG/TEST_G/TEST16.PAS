program test16;
Const N=10;
Type mass=array[1..N] of integer;
Const a:mass=(0, 0, 0, 1, 2, 3, 4, 5, 6, 7);
      b:mass=(0, 0, 0, 7, 6, 5, 4, 3, 2, 1);
var c : mass;
    i, p : integer;

procedure Print(m:mass);
var i:integer;
begin
  for I:=1 to n do
    write(m[i],' ');
  writeln
end;

begin
  p:=0;
  Print(a);
  Print(b);
  for i:= n downto 1 do
   begin
     c[i]:=a[i]+b[i] mod 10;
     p:=a[i]+b[i] div 10;
   end;
  Print(c);
end.