program typen;
var f:file;
m:array [1..10] of real;
x:integer;
begin
assign (f, 'name.dat');
reset (f,1);
blockread (f,m,SizeOf(m));
blockread (f,x,SizeOf(x));
close (f);
assign (f, 'dat.pas');
rewrite (f,1);
blockwrite (f,m,SizeOf(m));
blockwrite (f,x,SizeOf(x));
close (f);
readln;
end.