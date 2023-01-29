program test8;
Type mass=array[0..9] of integer;
Var i:integer;
    m:mass;
begin
  for i:=0 to 9 do
     m[i]:=random(10);
  for i:=1 to 100 do
    begin
      m[i mod 10]:=m[m[i mod 10]];
    end
end.