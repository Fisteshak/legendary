{$A+,B-,D+,E+,F-,G-,I+,L+,N-,O-,P-,Q+,R+,S+,T-,V+,X+}
{$M 16384,0,655360}
program petuch;
type ref=^node;
     node=record
     lit:char;
     next:ref;
     end;
var inz,tz,p:ref;
procedure crlist(var inz:ref);
var tz:ref;
    a:char;
    sp:string;
begin
     new(inz);
     tz:=inz;
     read(a);
     tz^.lit:=a;
     while a<>'.' do begin
           new(tz^.next);
           tz:=tz^.next;
           read(a);
           tz^.lit:=a;
     end;
     tz^.next:=nil;
     readln;
end;
procedure viv(inz:ref);
var tz:ref;
begin
     tz:=inz;
     while tz<>nil do begin
           write(tz^.lit);
           tz:=tz^.next;
           end;
     writeln;
end;
procedure dela(tz:ref);
var p:ref;
begin
     {if l<>1
     then begin}
          if tz^.next<>nil
          then begin p:=tz^.next;
          tz^.lit:=p^.lit;
          tz^.next:=p^.next;
          dispose(p);
          end;
          {end
     else begin
          if tz^.next<>nil
          then begin
           p:=tz^.next;
           tz^.next:=p^.next;
           dispose(p);
           end;
     end;}
end;
procedure vposl(tz:ref; k:char);
var p:ref;
begin
     new(p);
     p^.lit:=k;
     p^.next:=tz^.next;
     tz^.next:=p;
end;
procedure va(tz:ref; k:char; var j:ref);
begin
     new(p);
     p^.lit:=tz^.lit;
     p^.next:=tz^.next;
     tz^.next:=p;
     tz^.lit:=k;
     j:=p^.next;
end;
begin
     crlist(inz);
     viv(inz);
     tz:=inz;
    { while tz<>nil do begin
           if tz^.lit='a'
           then dela(tz);
     tz:=tz^.next;
     end; }
     {while tz<>nil do begin
           if tz^.lit='b'
           then vposl(tz,'a');
           tz:=tz^.next;
     end;}
     while tz<>nil do begin
           if tz^.lit='a'
           then va(tz,'a',tz);
     tz:=tz^.next;
     end;
     readln;
     viv(inz);
end.