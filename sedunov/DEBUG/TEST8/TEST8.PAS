program test8;
Type mass=array[1..8] of integer;
Var i:integer;
    m:mass;
begin
  for i:=1 to 8 do
     m[i]:=random(100);
  for i:=1 to 4 do
    begin
      m[i*2-1]:=2*m[i*2-1];
      m[i*2]:=m[i*2]+1;
    end
end.