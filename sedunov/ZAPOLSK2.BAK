program bfb4;
const max=100;
type tStack=array[1..max] of char;
var S:tStack;
top,r,i:integer;
n:char;
type tP=array[1..max] of char;
var p:tP;
var ss:string; t:char;
function nextchar:char;
begin
nextchar:=ss[1];
delete (ss,1,1);
end;
function pr(n:char):integer;
begin
case n of
'+','-': pr:=1;
'*','/': pr:=2;
'a'..'z': pr:=3;
'#','(': pr:=0;
end;
end;
function rang(t:char):integer;
begin
case t of
'+','-','*','/': rang:=-1;
'a'..'z': rang:=1;
'#': rang:=0;
end;
end;
begin
readln (ss);
top:=1; s[top]:='#';
r:=0;
i:=0;
n:=nextchar;
if n='(' then inc(top); s[top]:=n;
if n=')' then t:=s[top]; dec(top); inc(i); p[i]:=t;
repeat
while pr(n)<=pr(s[top]) do begin
t:=s[top]; dec(top); inc(i); p[i]:=t;
r:=r+rang(t);
if r<1 then writeln ('некорректно');
end;
inc(top); s[top]:=n;
n:=nextchar;
until n='#';
while s[top]<>'#' do begin
t:=s[top]; dec(top); inc(i); p[i]:=t;
r:=r+rang(t); if r<1 then writeln ('некорректно'); end;
if r=1 then writeln (p)
else writeln ('некорректно');
end.