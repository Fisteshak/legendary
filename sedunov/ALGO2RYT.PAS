program rang;
var  i,r,r1,r2:integer;
     s:string;
     f:boolean;
begin
     r:=0;
     r1:=0;
     r2:=0;
     i:=1;
     read(s);
     repeat
     if s[i]='('
     then inc(r);
     if s[i]=')'
     then dec(r);
     if s[i]='['
     then inc(r1);
     if s[i]=']'
     then dec(r1);
     if s[i]='{'
     then inc(r2);
     if s[i]='}'
     then dec(r2);
     inc(i);
     until (i > Length(s)) or (r<0) or (r1<>0) or (r2<>0);
     if (r<>0) and (r1<>0) and (r2<>0)
     then writeln ('false')
     else writeln ('true');
end.


