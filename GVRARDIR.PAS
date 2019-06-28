uses crt;
var   c:char;
      i,j,k,l:integer;
begin
write('TO STOP  ENTER ''A/a''; NOW PRESS CARRIAGE RETURN');
readln;
i:=1; j:=1; k:=4; l:=4;
gotoxy(1,1);
clrscr;
repeat
window(1,1,80,25);
textbackground(4);
textcolor(2);
window(i,j,k,l);
textbackground(17);

clrscr;
textcolor(15);
      c:=readkey;
 if ord(c)=75 then begin i:=i-4; k:=k-4;
                         if i<1 then begin i:=i+4; k:=k+4;  end;    end;
 if ord(c)=77 then begin i:=i+4; k:=k+4;
                         if k>80 then begin i:=i-4; k:=k-4;  end;    end;
 if ord(c)=72 then begin j:=j-4; l:=l-4;
                          if j<1 then begin j:=j+4; l:=l+4;  end;   end;
 if ord(c)=80 then begin j:=j+4; l:=l+4;
                          if l>24 then begin j:=j-4; l:=l-4;  end;   end;
until ((ord(c)=65) or (ord(c)=97));
textmode(0);
end.