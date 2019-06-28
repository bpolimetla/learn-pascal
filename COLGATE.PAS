 program zealmove;
 uses crt;
 var
    i,j,c1,c2,c3,r1,r2,r3 :integer;

 procedure LOVE;
 begin
 clrscr;
 gotoxy(13,12); write('     use       F O U R H E N C E   Tooth past   ');
 i:=1;
 repeat
 for j := 1 to 79 do
  begin
   gotoxy(j,i);write(char(16));sound(500);delay(50);nosound;
   gotoxy(j,i);write(' ');
  end;
 for i := 2 to 25 do
  begin
   gotoxy(j,i);write(char(31));sound(500);delay(50);nosound;
     gotoxy(j,i);write(' ');
  end;
 for j := 78 downto 1 do
  begin
   gotoxy(j,i);write(char(17));sound(500);delay(50);nosound;
   gotoxy(j,i);write(' ');
  end;
 for i:= 24 downto 1 do
  begin
   gotoxy(j,i);write(char(30));sound(500);delay(50);nosound;
   gotoxy(j,i);write(' ');
  end;
 until keypressed;nosound;
  write('               I    L O V E    I N D I A    ');
  repeat
  until keypressed;clrscr;
 end;

 begin
  love;nosound;
 end.