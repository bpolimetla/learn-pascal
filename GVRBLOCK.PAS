program gv (input,output);
uses crt;
label  1;
var i,j,k,l:integer;
begin
i:=1;
j:=1;
repeat
clrscr;
textbackground(15);
for k:=1 to 5 do
begin
textcolor(((12*k)mod 16)+blink);
gotoxy(j,i+k-1);
for l:=1 to 5 do write(chr(219));
writeln;
end;
if((i<>21)and(j=1)) then begin i:=i+4; j:=1; goto 1; end;
if((i=21)and(j=1)) then begin i:=21; j:=j+4; goto 1; end;
if((i=21)and(j<>73)) then begin i:=21; j:=j+4; goto 1; end;
if((i=21)and(j=73)) then begin i:=i-4; j:=73; goto 1; end;
if((i=1)and(j=73)) then begin i:=1; j:=j-4; goto 1; end;
if((i=1)and(j<>73)) then begin i:=1; j:=j-4; goto 1; end;
if ((i<>21)and(j=73)) then begin i:=i-4; j:=73; goto 1; end;
1:delay(200);
until keypressed;
textmode(0);
end.

