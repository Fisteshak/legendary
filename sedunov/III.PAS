Len:=FileSize(f)-1-SizeOf(m);
      s:='';
      p:=Root;}
      for z:=1 to Len-1 do
      begin
      read (f,a);
      s:=s+DecToBin(a);
      if length(s)>=220
      then begin
      for i:=1 to length(s) do
      if p^.left=p^.right
      then write (fOut, p^.Key)
      else if s[i]='0'
      then p:=p^.left;
      else p:=p^.right
    s:='';
    end;
    end;