program asci; {PRODUCE ASCII SET}
 uses crt,graph,dos;
 var
  i,j,k : integer;
 begin
  clrscr;
  i:=1;
  repeat
   clrscr;
   for j:=1 to 23 do
   begin
    writeln(i:3,' ',(chr(i)):4,'   ');
    i:=i+1;
    if i=256 then
     begin
     readln;
     exit;
     end;
     end;
     readln;
    until i>256 ;
end.