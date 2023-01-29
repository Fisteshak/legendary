var a,b,c,d,m1,m2,m3:integer;
begin
     Writeln('Введите 4 числа');
     Readln(a,b,c,d);
     m1:=(a+b+abs(a-b)) div 2;
     m2:=(c+m1+abs(c-m1)) div 2;
     m3:=(d+m2+abs(d-m2)) div 2;
     Writeln(m3);
end.