program yaotstal;
Uses graph,crt;
var gd,gm,x,y,d,h,i,n,c,g:integer;
begin
gd:=VGA;
GM:=VGAHi;
InitGraph(gd, gm, 'c:\tools\tp7\bgi');
begin
n:=4;
x:=300;
y:=150;
h:=50;
d:=50;
for i:=1 to 4 do
begin
setcolor (2);
setfillstyle(1,2);
line (x,y,x+d,y+h);
line (x,y,x-d,y+h);
line (x+d,y+h,x-d,y+h);
Floodfill (x,y+15,2);
y:=y+h;
d:=d+20;
end;
setcolor(6);
setfillstyle (1,6);
bar (x-5,y,x+5,y+20);
x:=300;
y:=150;
d:=50;
n:=50;
g:=1;
repeat
repeat
c:=Random(15)+1;
y:=y+h;
d:=d+20;
g:=g+1;
Setcolor (c);
setfillstyle(1,c);
fillellipse (x-d,y+h,5,5);
fillellipse (x+d,y+h,5,5);
until g=4;
delay (32000);
until keypressed;
readln;
CloseGraph;
end;
end.