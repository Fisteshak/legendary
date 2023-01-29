program test5;  {$R+,Q+}
var i,x:integer;
begin
   for i:=1 to 10 do
     begin
       x:=sqr(11-i);
       if i mod 2 = 0
       then begin
              writeln(x);
              i:=i+1
            end;
     end;
end.