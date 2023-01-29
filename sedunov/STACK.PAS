program queue;
uses graph,crt;
const max=640;
type El=record
     i,j:integer;
     end;
tQueue = array[1..max] of El;
var Q:tQueue;
g,xv,l:integer;
GD,GM:integer;
x,y:integer;
procedure PutQ (x,y:integer);
begin
if l=max
then writeln ('ç¥à¥¤ì ¯¥à¥¯®«­¥­ ')
else begin
Inc (xv);
if xv>max then xv:=1;
Q[xv].i:=x;
Q[xv].j:=y;
Inc(L);
end;
end;
Procedure Getq (x,y:integer);
begin
if l=0
then writeln ('ç¥à¥¤ì ¯ãáâ ')
else begin
x:=Q[g].i;
y:=Q[g].j;
inc (g);
if g>max
then g:=l;
dec (l);
end;
end;
begin
GD:=VGA;
GM:=VGAHi;
initgraph (gd,gm,'c:\tools\tp7\bgi');
L:=0;
xv:=0;
g:=1;
x:=random(99)+230;
y:=random(99)+230;
Setcolor (4);
Circle (250,250,50);
GetQ(x,y);
Getpixel(x,y);
PutQ(x,y);
Putpixel(x,y,6);
repeat
getq(x,y-1);
if getpixel (x,y-1)=0
then begin putpixel (x,y-1,6);
putq(x,y-1);
end;
getq(x-1,y);
if getpixel (x-1,y)=0
then begin putpixel (x-1,y,6);
putq(x-1,y);
end;
getq(x,y+1);
if getpixel (x,y+1)=0
then begin putpixel (x,y+1,6);
putq(x,y+1);
end;
getq(x+1,y);
if getpixel (x+1,y)=0
then begin putpixel (x+1,y,6);
putq(x+1,y);
end;
inc(x);
dec(y);
until l>0;
readln;
end.