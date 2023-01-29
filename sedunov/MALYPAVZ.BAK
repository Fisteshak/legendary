program ksha;
uses graph,crt;
const m=12;
      n=16;
type matr=array[0..n,0..m] of integer;
type k=array[1..10] of pointer;
type trc=record
     j,i:integer;
     di,dj:integer;
     inst:integer;
     end;
type volk=record
     j,i:integer;
     di,dj:integer;
     ti:integer;
     inst:integer;
     f:integer;
     v:integer;
     end;
var ekr:matr;
    ncv,gd,gm,x,y,i,j,k1,nelk:integer;
    f,f1:file;
    xcv,ycv,sizecv,xel,yel,sizeel:word;
    pic:k;
    c:char;
    rc:trc;
    vlk:volk;
begin
     gd:=VGA;
     gm:=VGAHi;
     randomize;
     vlk.ti:=0;
     initgraph(gd,gm,'c:\tools\tp7\bgi');
     assign(f,'cvetokd.spr');
     reset(f,1);
     blockread(f,xcv,2);
     blockread(f,ycv,2);
     blockread(f,sizecv,2);
     getmem(pic[1],sizecv);
     blockread(f,pic[1]^,sizecv);
     close(f);
     assign(f1,'elochka.spr');
     reset(f1,1);
     blockread(f1,xel,2);
     blockread(f1,yel,2);
     blockread(f1,sizeel,2);
     getmem(pic[2],sizecv);
     blockread(f1,pic[2]^,sizecv);
     close(f1);
     ncv:=10;
     assign(f1,'krasn.spr');
     reset(f1,1);
     blockread(f1,xel,2);
     blockread(f1,yel,2);
     blockread(f1,sizeel,2);
     getmem(pic[5],sizecv);
     blockread(f1,pic[5]^,sizecv);
     close(f1);
     assign(f1,'yavolk.spr');
     reset(f1,1);
     blockread(f1,xel,2);
     blockread(f1,yel,2);
     blockread(f1,sizeel,2);
     getmem(pic[6],sizeel);
     blockread(f1,pic[6]^,sizeel);
     close(f1);
     assign(f1,'topor.spr');
     reset(f1,1);
     blockread(f1,xel,2);
     blockread(f1,yel,2);
     blockread(f1,sizeel,2);
     getmem(pic[8],sizeel);
     blockread(f1,pic[8]^,sizeel);
     close(f1);
     setfillstyle(1,11);
     setcolor(11);
     bar(0,0,640,480);
     ekr[i,j]:=7;
     for k1:=0 to ncv do
         begin
              repeat
                    i:=random(n);
                    j:=random(m);
              until ekr[i,j]=0;
              ekr[i,j]:=1;
              end;
     nelk:=10;
     for k1:=0 to nelk do
         begin
              repeat
                    i:=random(n);
                    j:=random(m);
              until ekr[i,j]=0;
              ekr[i,j]:=2;
              end;
      repeat
           i:=random(n);
           J:=random(m);
     until ekr[i,j]=7;
     repeat
           i:=random(n);
           j:=random(m);
     until ekr[i,j]=0;
     ekr[i,j]:=8;
     for i:=0 to n-1 do
         for j:=0 to m-1 do
             if ekr[i,j]<>0
             then Putimage(i*40,j*40,pic[ekr[i,j]]^,normalput);
     repeat
           rc.i:=random(n);
           rc.j:=random(m);
     until ekr[rc.i,rc.j]=0;
     repeat
           vlk.i:=random(n);
           vlk.j:=random(m);
     until ekr[vlk.i,vlk.j]=0;
     repeat
      if keypressed
         then c:=readkey;
      case c of
           'd': begin rc.di:=1; rc.dj:=0; end;
           'w': begin rc.dj:=-1; rc.di:=0; end;
           's': begin rc.dj:=1; rc.di:=0; end;
           'a': begin rc.di:=-1; rc.dj:=0; end;
      end;
      if (rc.i+rc.di<0) or (rc.i+rc.di=n)
         then rc.di:=0;
      if (rc.j+rc.dj<0) or (rc.j+rc.dj=m)
         then rc.dj:=0;
      case ekr[rc.i+rc.di,rc.j+rc.dj] of
           1: begin rc.di:=0; rc.dj:=0; end;
           2: begin rc.di:=0; rc.dj:=0; end;
           6: begin rc.di:=0; rc.dj:=0; end;
           8: begin rc.inst:=1; end;
           7: begin rc.inst:=-1; end;
           end;
      setcolor(11);
      setfillstyle(1,11);
       bar(vlk.i*40,vlk.j*40,(vlk.i+1)*40,(vlk.j+1)*40);
      if (vlk.i<>rc.i)
      then  begin  vlk.di:=(rc.i-vlk.i) div abs(rc.i-vlk.i);  vlk.dj:=0; end;
      if (vlk.j<>rc.j)
      then  begin vlk.dj:=(rc.j-vlk.j) div abs(rc.j-vlk.j); vlk.di:=0; end;  
      if vlk.ti=0
      then
       begin
       if (ekr[vlk.i+vlk.di,vlk.j+vlk.dj]=0) or (ekr[vlk.i+vlk.di,vlk.j+vlk.dj]=5)
           then begin ekr[vlk.i,vlk.j]:=0;
            vlk.i:=vlk.i+vlk.di;
            vlk.j:=vlk.j+vlk.dj;
            ekr[vlk.i,vlk.j]:=6;
            vlk.ti:=2;  end;
      end
      else begin vlk.di:=0; vlk.dj:=0 end;
      if (vlk.i=rc.i) and (vlk.j=rc.j)
      then c:=#27;
      ekr[rc.i,rc.j]:=0;
      setcolor(11);
      setfillstyle(1,11);
      bar((rc.i)*40,(rc.j)*40,(rc.i+1)*40,(rc.j+1)*40);
      rc.i:=rc.i+rc.di;
      rc.j:=rc.j+rc.dj;
      case rc.inst of
      1: ekr[rc.i,rc.j]:=9;
      -1: ekr[rc.i,rc.j]:=10;
      end;
      rc.di:=0;
      rc.dj:=0;
      Putimage(rc.i*40,rc.j*40,pic[ekr[rc.i,rc.j]]^,normalput);
      Putimage(vlk.i*40,vlk.j*40,pic[ekr[vlk.i,vlk.j]]^,normalput);
      vlk.ti:=vlk.ti-1;
      delay(30000);
      vlk.di:=0;
      vlk.dj:=0;
     until c=#27;
end.
