program abc(input,output);
var  i,j,k,l,n:integer;
     m:real;
begin
      n:=0;
      k:=0;
      for i:=1 to 24 do writeln;
      readln;
  repeat
      n:=n+1;
      if k=0 then
      begin
      for i:=1 to 0 do writeln;
      for j:=1 to 24 do
      begin
      write('     ');
      for i:=1 to 24 do
      begin
      write(chr(1),chr(0),chr(177));
      end;
      writeln;
      end;
      k:=1;
      for i:= 1 to 0 do writeln;
      end;
      m:=0.0;
          repeat
      m:=m+0.0001;
          until (m>=1.816195);
      for i:=1 to 0 do writeln;
      if k=1 then
      begin
      for i:=1 to 0 do writeln;
      for i:=1 to 24 do
      begin
      write('     ');
      for j:=1 to (24) do
      begin
      write(chr(178),chr(205),chr(3));
      k:=0;
      end;
      writeln;
      end;
      end;
      m:=0.0;
      for i:=1 to 0 do writeln;
          repeat
          m:=m+0.0001;
          until(m>=1.816195);
      for i:=1 to 0 do writeln;
  until (n=10);
   readln;
end.