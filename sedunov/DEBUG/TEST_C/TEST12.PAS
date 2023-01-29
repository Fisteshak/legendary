program test11;
Var i:integer;
    s,x:string[255];
    f:boolean;

function Rec(n:integer):string;
 begin
     if N=0
     then Rec:=''
     else begin
            x:=rec(n-1);
            if not f
            then begin
                   Rec:=x;
                   if s[n]=' '
                   then begin
                         f:=true;
                         Rec:=x+s[n]
                        end
                   else if s[n]<>'a'
                        then Rec:=x+s[n]+s[n]
                 end
            else Rec:=x+s[n]
         end
 end;

begin
  Writeln('Введите несколько слов');
  Readln(s);
  f:=false;
  Writeln('K=',Rec(length(s)))
end.