program stroka1;
var s: string;
n,i:integer;
begin
writeln ('напешы плиз');
readln (s);
n:= Length (s);
for i:=1 to n do begin
    if s[i]='a' then begin
    s[i]:='b'; end
    else if s[i]='b' then
    s[i]:='a';
    end;
    for i:=1 to n do begin
    if s[i]='A'
    then s[i]:='B'
    else if s[i]='B'
    then s[i]:='A';
    end;writeln (s);
end.