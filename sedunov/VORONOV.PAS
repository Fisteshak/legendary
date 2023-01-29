program yaotstal;
Uses graph,crt;
var gd,gm,xv,yv,dx,d,e:integer;
begin
gd:=VGA;
GM:=VGAHi;
InitGraph(gd, gm, 'c:\tools\tp7\bgi');
xv:=400;
yv:=100;
d:=1;
e:=1;
repeat
xv:=(xv-5)*e;
setcolor(8);
setfillstyle(1,8);
fillellipse (xv*e,yv,50,15);
fillellipse ((xv-70)*e,yv,20,20);
setcolor(4);
setfillstyle (1,4);
line ((xv-90)*e,yv-20,(xv-90)*e,yv+20);
line ((xv-90)*e,yv-20,(xv-110)*e,yv);
line ((xv-90)*e,yv+20,(xv-110)*e,yv);
floodfill ((xv-100)*e,yv,4);
setcolor(15);
setfillstyle(1,15);
fillellipse ((xv-80)*e,yv-5,5,5);
setcolor(8);
setfillstyle(1,8);
line ((xv-15)*e,yv,xv*e,yv+50*d);
line ((xv+15)*e,yv,xv*e,yv+50*d);
line ((xv+15)*e,yv,(xv-15)*e,yv);
floodfill (xv*e,yv+25*d,8);
setcolor(8);
setfillstyle (1,8);
line ((xv+15)*e,yv,(xv+60)*e,yv-15);
line ((xv+15)*e,yv,(xv+60)*e,yv+15);
line ((xv+60)*e,yv+15,(xv+60)*e,yv-15);
floodfill ((xv+55)*e,yv,8);
delay (32000);

setcolor (0);
setfillstyle (1,0);
bar (0,0,600,600);
if (xv<=-100) or (xv>=800)
then begin xv:=0;
end;
e:=e*-1;
d:=d*-1;
until keypressed;
readln;
Closegraph;
end.
