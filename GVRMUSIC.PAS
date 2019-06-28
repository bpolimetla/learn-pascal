uses crt;
var j,i:integer;
    c:char;
begin
for j:=1 to 13 do writeln;
for j:=1 to 10 do begin  writeln;
for i:=1 to 10 do  write(chr(219));  write(' ':5);
for i:=1 to 10 do  write(chr(223));  write(' ':5);
for i:=1 to 10 do  write(chr(221));  write(' ':5);
for i:=1 to 10 do  write(chr(176));  write(' ':5);
for i:=1 to 10 do  write(chr(240));  end;
for j:=1 to 6 do writeln;
repeat
c:=ReadKey;
sound(ord(c)*10);
delay(500);
nosound;
until(c=' ');
end.
