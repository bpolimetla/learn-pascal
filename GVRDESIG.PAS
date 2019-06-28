uses crt;
var i,j,k,l:integer;
    m:real;
    c:char;
begin
  clrscr;
   write('enter '' '' to stop'); readln;
   c:=readkey;
   repeat
   k:=random(ord(c));
   for j:=1 to 2000 do
   begin
    i:=random(k)mod 13;
    case i of
   9,0:write(chr(240));
    11:write(chr(178));
   12, 6:write(chr(222));
    3:write(chr(177));
    4:write(chr(220));
    10:write(chr(223));
   5,2:write(chr(176));
    7:write(chr(221));
   11,1:write(chr(219));
    8:write(chr(220));end;
    end;
    c:=readkey;
    until(c=' ');
end.
