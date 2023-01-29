program dinamstek;
type ref=^node;
node=record
next:ref;
lit:char;
end;
var top,inz:ref;
procedure pop (var inz:ref);
var a:char; tz:ref; p:ref;
begin
     if inz=nil then begin new(inz);
     top:=inz; top^.lit:=a;
     end
     else begin
     new (top^.next); top:=top^.next;
     top^.lit:=a;
     end;
     if inz<>nil then begin tz:=tz^.next;
while tz^.next<>inz do
begin
     tz:=tz^.next;
     end;
     p:=tz^.next;
     tz^.next:=p^.next;
     tz^.lit:=p^.lit;
     dispose(p);
end;
end;
procedure push(a:char);
begin
     if inz=nil
     then begin new(inz); top:=inz; top^.lit:=a; end
     else begin new(top^.next); top:=top^.next; top^.lit:=a; end;
     end;

begin
readln;
end.