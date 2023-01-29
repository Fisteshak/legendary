program Koshmar;
var a,b,c,x,e:real;
begin
   a:=0;b:=7;
   e:=0.001;
   repeat
     c:=(a+b)/2;
     if (a*a-16)*(c*c-16)<0     {*}
     then b:=c
     else a:=c
   until abs(b-a)<e;
   writeln('x=',c:0:3)
end.
