program rang;
var  i,r:integer;
     s:string;
     f:boolean;
begin
     r:=0;
     i:=1;
     read(s);
     repeat
     if s[i]='('
     then inc(r);
     if s[i]=')'
     then dec(r);
     inc(i);
     until (i > Length(s)) or (r<0);
     if r<>0
     then writeln ('false')
     else writeln ('true');
end.


