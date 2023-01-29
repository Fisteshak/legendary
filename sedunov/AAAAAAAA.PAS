program trenazher;
Uses graph,crt;
type tBukv = record
x,y,dy:integer;
lit: char;
end;
Mass = array[1..20] of tBukv;
var m:mass;
num,gd,gm,max,t,i:integer;
c:char;
begin
gd:=VGA;
GM:=VGAHi;
InitGraph(gd, gm, 'c:\tools\tp7\bgi');
num:=0;
max:=20;
t:=Random(5)+5;
repeat
if keypressed
then begin
     c:=readkey;
     end;
     if c=#0
     then begin
     c:=ReadKey;
     end;
for i:=1 to Num do
    begin
    setcolor (2);
    setfillstyle(2,1);
    arc(m[i].x, m[i].y, 0, 180, 30);
    line (m[i].x-30,m[i].y,m[i].x+30,m[i].y);
    floodfill(m[i].x-15,m[i].y-5,blue);
    line (m[i].x-30,m[i].y,m[i].x,m[i].y+45);
    line (m[i].x,m[i].y,m[i].x,m[i].y+45);
    line (m[i].x+30,m[i].y,m[i].x,m[i].y+45);
    fillellipse(m[i].x,m[i].y+60,15,15);
    OuttextXY (m[i].x,m[i].y+60,m[i].lit);
    end;
if num<max
   then begin
        dec(t);
        if t=0
        then begin
             t:=Random(5)+5; inc(Num);
             m[num].x:=random(600)+20;
             m[num].y:=50;
             m[num].lit:=chr(random(26)+ord('a'));
             end;
        end;
        for i:=1 to num do
        begin
        if c=m[i].lit
        then begin
        m[i]:=m[num];
        num:=num-1;
        end;
        setfillstyle(1,black);
         setcolor (2);
         setfillstyle(2,1);
         arc(m[i].x, m[i].y, 0, 180, 30);
         line (m[i].x-30,m[i].y,m[i].x+30,m[i].y);
         floodfill(m[i].x-15,m[i].y-5,blue);
         line (m[i].x-30,m[i].y,m[i].x,m[i].y+45);
         line (m[i].x,m[i].y,m[i].x,m[i].y+45);
         line (m[i].x+30,m[i].y,m[i].x,m[i].y+45);
         fillellipse(m[i].x,m[i].y+60,15,15);
         OuttextXY (m[i].x,m[i].y+60,m[i].lit);
         end;
delay(32000);
for i:=1 to num do
m[i].y:=m[i].y+10;
setcolor (blue);
setfillstyle (1,blue);
bar (0,0,640,640);
until c=#13;
end.
