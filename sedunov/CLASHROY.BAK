program domik;
Uses graph,crt;
var gd,gm,x,y,xs,ys:integer;
begin
gd:=VGA;
GM:=VGAHi;
InitGraph(gd, gm, 'c:\tools\tp7\bgi');

Setfillstyle (1,3);
Setcolor (2);
Line (160, 240, 80,320);
Line (160, 240, 240, 320);
Line (80, 320, 240, 320);
FloodFill(120,280,3);

Setfillstyle (1,2);
setcolor(2);
Bar (80,320,240,400);

Setcolor (2);
Setfillstyle (1,2);
Line (160,240,480,200);
Line (240,320,560,280);
Line (240,400,560,360);
Line (560,360,560,280);
line (480,200,560,280);
FloodFill (320,240,2);


x:=80;
y:=80;
xs:=300;
ys:=175;
repeat
Setfillstyle (1,14);
Setcolor (14);
FillEllipse (x,y,30,30);
line (x,y-40,x,y+40);
line (x-40,y,x+40,y);
line (x-30,y-30,x+30,y+30);
line (x-30,y+30,x+30,y-30);
Setfillstyle (1,8);
setcolor (8);
FillEllipse (xs,ys,50,30);
delay (30000);
SetFillstyle (1,0);
Setcolor (0);
FillEllipse (x,y,30,30);
line (x,y-40,x,y+40);
line (x-40,y,x+40,y);
line (x-30,y-30,x+30,y+30);
line (x-30,y+30,x+30,y-30);
Setfillstyle (1,0);
setcolor (0);
FillEllipse (xs,ys,50,30);
x:=x+20;
if x>=640
then
begin
x:=80;
y:=80;
end;
ys:=ys-15;
if ys<=0
then
begin
xs:=300;
ys:=175;
end;
until keypressed;
Readln;
CloseGraph;
end.