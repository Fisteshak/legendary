program test10;
Type mass=array[1..10] of integer;
Const m:mass=(2,5,-4,7,-9,1,-8,3,6,0);
Var i:integer;

function Rec(n:integer):integer;
 begin
     if N=0
     then Rec:=0       {1}
     else if m[n]<0
          then Rec:=Rec(n-1)+1  {2}
          else Rec:=Rec(n-1)    {3}
 end;

begin
  Writeln('K=',Rec(10))
end.