program nytiki;
Uses graph,crt;
const n=16;
m=12;
type matr=array [1..N,1..M] of integer;
     mass=array [1..8] of pointer;
type trc=record
i,j:integer;
di,dj:integer;
inst:integer;
end;
type chmolk=record
i,j:integer;
di,dj:integer;
inst:integer;
end;
var gd,gm,Nelk,Nflow,Ncoin,k,i,j:integer;
ekr:matr;
pic:mass;
f:file;
c:char;
g:boolean;
x,y,size:word;
rc:trc;
volk:chmolk;
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
assign (f,'topor.spr');
reset(f,1);
blockread(f,x,2);
blockread(f,y,2);
blockread(f,size,2);
getmem (pic[2],size);
blockread(f,pic[2]^,size);
close(f);
assign (f,'elochka.spr');
reset(f,1);
blockread(f,x,2);
blockread(f,y,2);
blockread(f,size,2);
getmem (pic[3],size);
blockread(f,pic[3]^,size);
close(f);
assign (f,'krasn.spr');
reset(f,1);
blockread(f,x,2);
blockread(f,y,2);
blockread(f,size,2);
getmem (pic[4],size);
blockread(f,pic[4]^,size);
close(f);
assign (f,'yavolk.spr');
reset(f,1);
blockread(f,x,2);
blockread(f,y,2);
blockread(f,size,2);
getmem (pic[5],size);
blockread(f,pic[5]^,size);
close(f);
assign (f,'vk.spr');
reset(f,1);
blockread(f,x,2);
blockread(f,y,2);
blockread(f,size,2);
getmem (pic[6],size);
blockread(f,pic[6]^,size);
assign (f,'cvetokd.spr');
reset(f,1);
blockread(f,x,2);
blockread(f,y,2);
blockread(f,size,2);
getmem (pic[7],size);
blockread(f,pic[7]^,size);
close(f);
Nelk:=random(4)+3;
Ncoin:=random(2)+3;
Nflow:=random(2)+3;
for k:=1 to Nelk do
    begin
         repeat
               i:=random(n);
               j:=random(m);
         ekr [i,j]:=1;
         until Nelk=0;
         if ekr[i,j]<>0
then Putimage (j*size,i*size,pic[ekr[i,j]]^,NormalPut);
         end;
            for k:=1 to Nflow do
    begin
         repeat
               i:=random(n);
               j:=random(m);
         ekr [i,j]:=3;
         until Nflow=0;
         if ekr[i,j]<>0
then Putimage (j*size,i*size,pic[ekr[i,j]]^,NormalPut);
         end;
for k:=1 to Ncoin do
    begin
         repeat
               i:=random(N);
               j:=random(M);
         ekr [i,j]:=6;
         until Ncoin=0;
         end;
rc.i:=random(N);
rc.j:=random(M);
volk.i:=random(N);
volk.j:=random(M);
repeat
if keypressed then begin
c:=Readkey;
case c of
#0,#77:rc.di:=1;
#0,#72:rc.dj:=-1;
#0,#80:rc.dj:=1;
#0,#75:rc.di:=-1;
end;
end;
if (RC.i+RC.di<=0) or (RC.i+RC.di=N)
then RC.di:=0;
if (RC.j+RC.dj<=0) or (RC.j+RC.dj=M)
then RC.dj:=0;
if volk.i=rc.i
then volk.di:=0
else volk.di:=(rc.i-volk.i) div abs (rc.i-volk.i);
if volk.j=rc.j
then volk.dj:=0
else volk.dj:=(rc.j-volk.j) div abs (rc.j-volk.j);
Putimage (rc.i*40,rc.j*40,pic[4]^,normalput);
Putimage (Volk.i*40,Volk.j*40,pic[5]^,normalput);
delay(32000);
setcolor (0);
setfillstyle (1,0);
bar (0,0,640,640);
if g=false
then volk.dj:=0;
volk.di:=0;
g:=true;
volk.i:=volk.i+volk.di;
volk.j:=volk.j+volk.dj;
rc.i:=rc.i+rc.di;
rc.j:=rc.j+rc.dj;
until c=#27;
         readln;
         Closegraph;
END.