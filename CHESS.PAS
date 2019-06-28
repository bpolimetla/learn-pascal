PROGRAM chess;
uses crt;
var
 i,j,k : integer;
 a,b : array [1..9] of char;
 begin
  clrscr;
  a:='ллллллллл';
  b:='         ';
  for i:= 1 to 4 do
  begin
     for j:=1 to 3 do
     begin
       for k:=1 to 4 do write (a,b);
       writeln;
     end;
     for j:=1 to 3 do
     begin
       for k:=1 to 4 do write (b,a);
       writeln;
     end;
   end;
   repeat
   until keypressed;
  end.
