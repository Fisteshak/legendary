program avtovaz;
Uses graph,crt;
var gd,gm,xp,yp,i,xc,xd,yd,xe,xr,yu:integer;
 begin
gd:=VGA;
GM:=VGAHi;
InitGraph(gd, gm, 'c:\tools\tp7\bgi');
xp:=400;
yp:=350;
repeat
yu:=yp;
xd:=xp;
xc:=xp;
yd:=yp;
xe:=xp;
xr:=xp;
setcolor (2);
setfillstyle (1,2);
bar (xp,yp,xp+100,yp+30);
bar (xp+100,yp-30,xp+130,yp+30);
setcolor(14);
setfillstyle(1,14);
bar (xp+105,yp-25,xp+120,yp);
setcolor(4);
line (xp-15,yp+15,xp,yp);
line (xp-15,yp+15,xp,yp+30);
line (xp,yp+30,xp,yp);
setfillstyle (1,4);
floodfill (xp-1,yp+20,4);
setfillstyle(1,4);
setcolor (4);
Fillellipse (xp+130,yp+60,30,30);
setcolor (11);
line (xp,yp-30,xp+30,yp-30);
line (xp+15,yp,xp+30,yp-30);
line (xp+15,yp,xp,yp-30);
setfillstyle(1,11);
floodfill(xp+15,yp-15,11);
for i:=1 to 4 do
begin
FillEllipse (xe+70,yp+40,10,10);
xe:=xe-20;
end;
for i:=1 to 3 do
begin
setcolor (15);
line (xd+130,yd,xd+200,yd);
setcolor(12);
setfillstyle(1,12);
bar(xc+200,yd-20,xc+280,yd+20);
xc:=xc+150;
xd:=xd+150;
end;
delay (32000);
setcolor(0);
setfillstyle (1,0);
bar (0,0,650,600);
if xp<=-300
then
begin
xp:=449
end;
xp:=xp-5;
until keypressed;
readln;
Closegraph;
end.