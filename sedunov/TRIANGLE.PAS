program elochka;
uses graph,crt;
procedure triangle (x,y,a,h,c: integer);
begin
setcolor (c);
line (x,y,x-a,y+h);
line (x,y,x+a,y+h);
line (x-a,y+h,x+a,y+h);
setfillstyle (c,0);
floodfill (x-1,y+2,c);
end;
procedure el (x,y,a,h,c,i:integer);
begin
for i:=1 to 5 do
begin
triangle (x,y,a,h,c);
a:=a+5;
h:=h+5;
y:=y+h;
end;
end;
var gd,gm:integer;
begin
gd:=VGA;
gm:=VGAHi;
initgraph (gd,gm,'c:\tools\tp7\bgi');
el (100,200,20,20,15,1);
setcolor (brown);
setfillstyle (1,brown);
bar (80,370,120,390);
readln;
closegraph;
end.
