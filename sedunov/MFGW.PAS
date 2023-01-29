program snegovik;
uses graph, crt;
var GD,GM,x,y,h,c,c2,c3,i,f: integer;
procedure snowman(x,y,h,c,c2,c3:integer);
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
     f:=1-f;
     if f=1
     then begin setcolor(6); setfillstyle (1,6);  line (x-50,y-70,x-50,y+100); line (x-50,y-50,x-30,y-70);
      line (x-50,y-50,x-70,y-70);
     end;
     if f=0 then begin setcolor (6); setfillstyle (1,6); line (x-50,y-50,x-50,y+120); line (x-70,y+120,x-50,y+100);
     line (x-50,y+100,X-30,y+120);
     end;
end;
begin
GD:=VGA;
GM:=VGAHi;
InitGraph (GD,GM, 'c:\tools\tp7\bgi');
x:=300;
y:=300;
h:=200;
c:=15;
c2:=11;
c3:=10;
repeat
snowman (x,y,h,c,c2,c3);
settextstyle (3,0,3);
outtextxy (100,100,'”Œ-€’œŸ');
outtextxy (100,150,'‚…“‹ˆ‘œ, —’› €‚ˆ’œ');
outtextxy (100,200,'†… ”ˆ‡Œ€’ •€ˆ');
delay (32000);
setcolor (0);
setfillstyle (1,0);
bar (0,0,640,640);
until keypressed;
readln;
Closegraph;
end.