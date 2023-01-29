program SUNSISTEM;
Uses graph,crt;
var gd,gm,xs,ys,R,xp,yp,xy,xv,yy,yv,ru,re,ra,xg,yg,xm,ym,rm:integer;
a,da,db,b,c,dc,d,dd,e,de: real;
begin
gd:=VGA;
GM:=VGAHi;
InitGraph(gd, gm, 'c:\tools\tp7\bgi');
xs:=320;
ys:=240;
r:=120;
a:=0;
da:=0.05;
b:=0;
db:=0.04;
ru:=200;
c:=0;
dc:=0.03;
re:=250;
ra:=50;
d:=0;
dd:=0.09;
e:=0;
de:=0.1;
re:=180;
repeat
Setcolor (14);
Setfillstyle (1,14);
FillEllipse (xs,ys,60,60);
xp:=xs+Round(R*cos(a));
yp:=ys-Round(R*sin(a));
setcolor (red);
setfillstyle (1,red);
fillellipse (xp,yp,15,15);
xv:=xs+Round(ru*cos(b));
yv:=ys-Round(ru*sin(b));
setcolor (green);
setfillstyle (1,green);
fillellipse (xv,yv,15,15);
xy:=xs+Round(re*cos(c));
yy:=ys-Round(re*sin(c));
setcolor (blue);
setfillstyle (1, blue);
fillellipse (xy,yy,15,15);
xg:=xp+Round(ra*cos(d));
yg:=yp+Round(ra*sin(d));
setcolor (white);
setfillstyle (1, white);
fillellipse (xg,yg,5,5);
xm:=xs+Round(R*cos(e));
ym:=ys-Round(R*sin(e));
setcolor (7);
setfillstyle (1,7);
fillellipse (xm,ym,30,15);
setcolor (13);
setfillstyle (1,13);
fillellipse(xm,ym-15,10,10);
setcolor (blue);
setfillstyle (1,blue);
fillellipse (xm+9,ym,3,3);
fillellipse (xm+3,ym,3,3);
fillellipse (xm-3,ym,3,3);
fillellipse (xm-9,ym,3,3);
setcolor (15);
line (xm-10,ym+10,xm-15,ym+30);
line (xm,ym+10,xm,ym+30);
line (xm+10,ym+10,xm+15,ym+30);
delay (32000);
setcolor (0);
setfillstyle (1,0);
bar (0,0,600,600);
a:=a+da;
if a>2*Pi
then a:=a-2*Pi;
b:=b+db;
if b>2*Pi
then
b:=b-2*Pi;
c:=c+dc;
if c>2*Pi
then
c:=c-2*Pi;
d:=d+dd;
if d>2*Pi
then
d:=d-2*Pi;
e:=e+de;
if e>2*Pi
then e:=e-2*Pi;
until keypressed;
Readln;
CloseGraph;
end.