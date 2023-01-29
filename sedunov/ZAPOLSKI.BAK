program bfb4;
const max=100;
type tStack=array[1..max] of char;
var S:tStack;
top,r,i:integer;
n:char;
type tP=array[1..max] of char;
var p:tP;
var ss:string;t:char;
function nextchar(ss:string):char;
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
'#': pr:=0;
end;
end;
function rang(t:char):integer;
begin
case t of
'+','-','*','/': rang:=-1;
'a'..'z': rang:=-1;
end;
end;
begin
readln (ss);
top:=1; s[top]:='#';
r:=0;
i:=0;
n:=nextchar(ss);
repeat
while PR(N)<=PR(S[top]) do begin
t:=s[top]; dec(top); inc(i); p[i]:=t;
r:=r+rang(t);
if r<1 then writeln ('выражение некорректно');
end;
inc(top); s[top]:=n;
n:=nextchar(ss);;
until n='#';
while s[top]<>'#' do
t:=s[top]; dec(top);
inc(i); p[i]:=t;
r:=r+rang(t);
if r=1 then writeln (p)
else writeln ('выражение некорректно');
end.
