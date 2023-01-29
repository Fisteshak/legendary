program test11;
Type mass=array[1..10] of integer;
Const m:mass=(2,5,10,7,-9,0,-8,0,6,0);
Var i:integer;

function Rec(n:integer):integer;
var x:integer;
 begin
     if N=0
     then Rec:=0       {1}
     else begin
            x:=Rec(n-1);
            if (m[n]=0)and(x=0)
            then Rec:=n           {2}
         end
 end;

begin
  Writeln('K=',Rec(10))
end.