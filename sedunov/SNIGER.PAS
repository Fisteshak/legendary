program snegovik;
uses graph, crt;
var GD,GM,x,y,h,c,c2,c3,i: integer;
procedure snowmisha(x,y,h,c,c2,c3:integer);
var r1,r2,r3:integer;
begin
     r1:=h div 10;
     r2:=round(h*0.15);
     r3:=h div 4;
     setcolor (c);
     setfillstyle (1,c);
     fillellipse (x,y,r1,r1);
     fillellipse (x,y+r1+r2,r2,r2);
     fillellipse (x,y+r1+r2+r2+r3,r3,r3);
     fillellipse (x+r1+r2,y+r1+r2,r1,r1);
     fillellipse (x-r1-r2,y+r1+r2,r1,r1);
     fillellipse (x+r1+r2+r1,y+r1+r2+r2+r3+r1,r1,r1);
     fillellipse (x-r1-r2-r1,y+r1+r2+r2+r3+r1,r1,r1);
     setfillstyle (1,c2);
     fillellipse (x+r1-5,y,3,3);
     fillellipse(x-r1+5,y,3,3);
     setfillstyle (1,c3);
     bar (x-r1,y-r1-r1,x+r1,y-r1);
end;
begin
GD:=VGA;
GM:=VGAHi;
InitGraph (GD,GM, 'c:\tools\tp7\bgi');
randomize;
for i:=1 to 100 do
begin
x:=random(580)+40;
y:=random(320)+40;
h:=random(100)+40;
c:=random(15);
c2:=random(15);
c3:=random(15);
snowmisha (x,y,h,c,c2,c3);
end;
readln;
Closegraph;
end.