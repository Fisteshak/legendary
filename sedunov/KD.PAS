program nytiki;
Uses graph,crt;
const n=16;
m=12;
type matr=array [0..N,0..M] of integer;
     mass=array [1..5] of pointer;
type trc=record
i,j:integer;
di,dj:integer;
inst:integer;
end;
var gd,gm,Nelk,Nflow,Nberry,Ncoin,k,i,j:integer;
ekr:matr;
pic:mass;
f,f1,f2:file;
x,y,size,xa,ya,sizea:word;
c:char;
rc:trc;
 begin
gd:=VGA;
GM:=VGAHi;
InitGraph(gd, gm, 'c:\tools\tp7\bgi');
setfillstyle (1,2);
bar (0,0,640,480);
assign (f,'cvetok.spr');
reset(f,1);
blockread(f,x,2);
blockread(f,y,2);
blockread(f,size,2);
getmem (pic[1],size);
blockread(f,pic[1]^,size);
close(f);
assign (f1,'topor.spr');
reset(f1,1);
blockread(f1,xa,2);
blockread(f1,ya,2);
blockread(f1,sizea,2);
getmem (pic[2],sizea);
blockread(f1,pic[2]^,sizea);
close(f1);
nelk:=random(5)+3;
for k:=1 to nelk do
    begin
         repeat
               i:=random(n);
               j:=random(m);
         until ekr[i,j]=0;
         ekr [i,j]:=1;
         end;
repeat
rc.i:=random(N);
rc.j:=random(M);
if keypressed then begin
c:=Readkey;
case c of
#72:rc.di:=1;
#75:rc.dj:=-1;
#77:rc.dj:=1;
#80:rc.di:=-1;
end;
end;
if (RC.i+RC.di<0) or (RC.i+RC.di=N)
then RC.di:=0;
if (RC.j+RC.dj<0) or (RC.j+RC.dj=M)
then RC.dj:=0;
delay (32000);
setcolor (0);
setfillstyle (1,0);
bar (0,0,640,640);
until c=#27;
         readln;
         Closegraph;
END.