program vozrastcheloveka;
var x, y: integer;
begin
   writeln ('‚Ά¥¤¨β¥ Ά®§ΰ αβ ®β 1 ¤® 150');
   Read (x);
   if (x>=11) and (x<=19)
   then writeln ('‚ ¬ ',x,'«¥β')
   else if (x mod 10 > 1) and (x mod 10 < 5)
    then writeln ('‚ ¬ ',x,' £®¤ ')
    else if x mod 10 = 1
     then writeln ('‚ ¬ ',x,'£®¤')
     else if(x mod 10 = 0) or (x mod 10 > 4) and (x mod 10 < 10)
      then writeln ('‚ ¬ ',x,'«¥β');
end.