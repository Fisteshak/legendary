program koroche3;
procedure koroche;
var fIn,fOut: text; s:string;i:integer;
begin
assign (fin,'koroche.pas');
reset (fin);
assign (fout,'output.pas');
reset (fout);
while not eof(fin) do
readln (fin,s);
repeat
i:=Pos(', ����,',s);
if i<>0 then
delete (s,i,9);
until i=0;
writeln (s);
end;
begin
koroche;
readln;
end.