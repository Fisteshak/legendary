{$A+,B-,D+,E+,F-,G-,I+,L+,N-,O-,P-,Q+,R+,S+,T-,V+,X+,Y+}
{$M 16384,0,655360}
program sumcifr;
const max=100;
type tList=array [1..Max] of integer;
var m,l:tList;
y,v,s,x,b,z,n,i,min,k:integer;
f:boolean;
begin
writeln ('Введите количество');
readln (N);
for i:=1 to N do
begin m[i]:= random (9900)+100;
writeln ('m[',i,']=',m[i]);
end;
for i:=1 to N do
begin
v:=m[i];
repeat
x:=v mod 10;
v:=v div 10;
s:=s+x;
until v=0;
l[i]:=s;
s:=0;
end;
for i:=1 to n-1 do
begin
min:=i;
for k:=i+1 to n do
if m[k]<m[min]
then min:=k;
b:=m[min];
m[min]:=m[i];
m[i]:=b;
end;
writeln ('m[',i,']=',m[i]);
readln;
end.
