Program pascal(input,output);
label 10;
Var   i,j,k,l,n:integer;
      a:array[0..100] of integer;
Begin
      write('ENTER THE NUMBER=> ');
      read(n);
      IF N=0 THEN
      BEGIN
      WRITE('1');
      GOTO 10;
      END;
      IF I=1 THEN
      BEGIN
      WRITE('1 1');
      GOTO 10;
      END;
      for i:=1 to 100 do
      begin
      a[i]:=0;
      end;
      if(n=1)then writeln('1')
      else
      begin
      writeln('1');
      writeln('1 2 1');
      a[1]:=1;
      a[2]:=2;
      a[3]:=1;
      for i:=3 to n do
      begin
      a[0]:=0;
      for j:=1 to i+1 do
      begin
      l:=1;
      for k:=j downto 1 do
      begin
      l:=l*(-1);
      a[j]:=a[j]-(a[k-1]*l);
      end;
      write(a[j],' ');
      end;
      writeln;
      end;
      end;
10: End.


