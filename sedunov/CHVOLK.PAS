program chvolk;
Uses graph,crt;
var bf:boolean;
gd,gm,dx,dy,da,db,z,t,bx,by,tsb,tvb:integer;
a,b,x,y:longInt;
c:char;
r:real;
begin
gd:=VGA;
GM:=VGAHi;
InitGraph(gd, gm, 'c:\tools\tp7\bgi');
a:=400;
b:=400;
x:=200;
y:=200;
t:=10;
bf:=false;
repeat
setcolor (15);
setfillstyle (1,15);
fillellipse (x,y,40,40);
setcolor (0);
fillellipse (x-15,y-5,5,10);
fillellipse (x+15,y-5,5,10);
setfillstyle (1,0);
fillellipse (x-13,y,3,3);
fillellipse (x+13,y,3,3);
setcolor (red);
setfillstyle (1,red);
fillellipse (x,y+5,10,5);
setcolor (7);
setfillstyle (1,7);
fillellipse (x-10,y+10,15,5);
fillellipse (x+10,y+10,15,5);
fillellipse(x-15,y-45,5,15);
fillellipse(x+15,y-45,5,15);
setcolor (red);
circle (a,b,15);
circle (a,b,25);
circle (a,b,35);
line (a-45,b,a+45,b);
line (a,b+45,a,b-45);
z:=Random(4);
case Z of
0: dx:=7;
1: dy:=-7;
2: dx:=-7;
3: dy:=7;
end;
x:=x+dx;
y:=y+dy;
if keypressed
then
c:=ReadKey;
if c=#0
then c:=ReadKey;
case c of
#77: da:=5;
#72: db:=-5;
#75: da:=-5;
#80: db:=5;
end;
if (c=#77) or (c=#75)
then a:=a+da
else if (c=#72) or (c=#80)
then b:=b+db;
delay (32000);
if bf=false
then begin
tsb:=tsb-1;
if tsb=0
then begin
bx:=x;
by:=y;
tvb:=random(10)+10;
end
else
tvb:=tvb-1;
setcolor (red);
setfillstyle (1,red);
fillellipse (bx,by,50,50);
bf:=true
end;
if tvb=0
then begin
setcolor (0);
setfillstyle (1,0);
fillellipse (bx,by,100,100);
tsb:=Random (10) +10;
end;
a:=a+da;
b:=b+db;
t:=t-1;
if t=0
then
begin dy:=-dy;
dx:=-dx;
t:=Random(7)+10
end;

setcolor (11);
setfillstyle (1,11);
bar (0,0,640,640);
if (x+dx<0) or (x+dx>640)
then dx:=-dx;
if (y+dy<0) or (y+dy>480)
then dy:=-dy;
x:=x+dx;
y:=y+dy;
if (a+da<0) and (c=#75)
then a:=20;
if (b+db<0) and  (c=#77)
then a:=20;
if (a+da>640) and (c=#80)
then b:=620;
if (b+db>480) and (c=#72)
then a:=20;
r:=SQRT(sqr(x-a)+sqr(y-b));
if (c=#32) and (r<40)
then begin
setcolor (0);
fillellipse (x,y,40,40);
fillellipse (x-15,y-5,5,10);
fillellipse (x+15,y-5,5,10);
fillellipse (x-13,y,3,3);
fillellipse (x+13,y,3,3);
fillellipse (x,y+5,10,5);
fillellipse (x-10,y+10,15,5);
fillellipse (x+10,y+10,15,5);
fillellipse(x-15,y-45,5,15);
fillellipse(x+15,y-45,5,15);
delay (32000);
x:=50+random(600);
y:=50+random(440);
end;
until c=#27;
CloseGraph
end.