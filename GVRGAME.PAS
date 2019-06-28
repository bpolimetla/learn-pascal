program gv (input,output);
uses crt;
label 1,2,11,12,13;
type rec1 = record
             d,e,f,g:integer;
             end;
var  b,c,b1,c1,b2,c2:array[1..6] of integer;
     a1,a,a2:array[1..6] of rec1;
     w:char;
     m,n,p,t,p1,p2,q,q1,q2,s,r,z1,z2,v,y,x,z:integer;
begin
    window(1,1,80,25);  textbackground(black);
   clrscr;    textcolor(white+BLINK);
   gotoxy(1,12);
   writeln('               WELCOME');
   writeln;
   writeln('               TO THIS');
   writeln;
   writeln('                 GAME  ');
   writeln;
   write('ENTER YOUR LEVEL (0-5)( 0-speed)');
   read(s);
   case s of
   0:t:=500;
   1:t:=700;
   2:t:=900;
   3:t:=1100;
   4:t:=1300;
   5:t:=1500; end;
       m:=35; n:=45; p:=0; p1:=0; p2:=0; r:=0;
   for v:= 1to 6 do
 begin b[v]:=0; c[v]:=0;
       b1[v]:=0; c1[v]:=0;
       b2[v]:=0; c2[v]:=0; end; y:=0;
    1:  repeat
    if y mod 10=0 then r:=r+1;
   window(1,1,25,25);  textbackground(black);
   textcolor(white);
   for v:= 1 to 625 do
   begin
   case (random(13)) of
   0:write(chr(178));
   1:write(chr(177));
   2:write(chr(219));
   3:write(chr(254));
   4:write(chr(221));
   5:write(chr(222));
   6:write(chr(177));
   7:write(chr(178));
   8:write(chr(220));
   9:write(chr(219));
   10:write(chr(222));
   11:write(chr(221));
   12:write(chr(223));  end;
   end;
   window(55,1,80,25);   textbackground(black);
   textcolor(white);
   for v:= 1 to 625 do
   begin
   case (random(13)) of
   0:write(chr(178));
   1:write(chr(177));
   2:write(chr(219));
   3:write(chr(222));
   4:write(chr(223));
   5:write(chr(222));
   6:write(chr(219));
   7:write(chr(177));
   8:write(chr(220));
   9:write(chr(178));
   10:write(chr(219));
   11:write(chr(221));
   12:write(chr(223));  end;
   end;
    window(25,1,55,25);
    textbackground(black);
    clrscr;
   textcolor(9);
   for v:=1 to 744 do write(chr(176));
   window(m,1,n,5);
   textbackground(black);
   clrscr;
    textcolor(9);
    for v:=1 to 66 do write(chr(177));
   if ((y mod 1)=0) then begin
   randomize;
   x:=random(28361);
      case x mod 4 of
      1:begin z:=0; p:=(p+1) mod 7; end;
      2:begin z1:=0; p1:=(p1+1) mod 7; end;
      3:begin z2:=0; p2:=(p2+1) mod 7; end; end;
if z=0 then begin
       for q:= 1to p do
       begin
       b[q]:=(b[q] mod 6)+1;
       c[q]:=b[q];
       a[c[q]].d:=(27-(b[q]*4));
       a[c[q]].e:=(29-(b[q]*4));
       a[c[q]].f:=38;
       a[c[q]].g:=42;
       with a[c[q]] do begin
       window(f,d,g,e);
       textbackground(yellow);
       clrscr;
       textcolor(6);
       for v:= 1 to 12 do write(chr(177));
       if ((f>m) and (g<n) and (d>1) and (e<=5)) then goto 2;
       end;
           end; end;
if z1=0 then begin
       for q1:= 1 to p1 do
       begin
       b1[q1]:=(b1[q1] mod 6)+1;
       c1[q1]:=b1[q1];
       a1[c1[q1]].d:=(27-(b1[q1]*4));
       a1[c1[q1]].e:=(29-(b1[q1]*4));
       a1[c1[q1]].f:=28;
       a1[c1[q1]].g:=32;
       with a1[c1[q1]] do begin
       window(f,d,g,e);
       textbackground(yellow);
       clrscr;
       textcolor(6);
        for v:= 1 to 12 do write(chr(177));
       if ((f>m) and (g<n) and (d>1) and (e<=5)) then goto 2;
       end;   end;
           end;
if z2=0 then begin
       for q2:= 1 to p2 do
       begin
       b2[q2]:=(b2[q2] mod 6)+1;
       c2[q2]:=b2[q2];
       a2[c2[q2]].d:=(27-(b2[q2]*4));
       a2[c2[q2]].e:=(29-(b2[q2]*4));
       a2[c2[q2]].f:=48;
       a2[c2[q2]].g:=52;
       with a2[c2[q2]] do begin
       window(f,d,g,e);
       textbackground(yellow);
       clrscr;
       textcolor(6);
        for v:= 1 to 12 do write(chr(177));
       if ((f>m) and (g<m) and (d>1) and (e<=5)) then goto 2;
       end;
           end;      end;  end;
y:=y+1;
delay(t);
until keypressed;
w:=readkey;
if ((ord(w)=83) or (ord(w)=115)) then goto 2;
  if (ord(w)=075) then
            begin
                           m:=m-10;
                           n:=n-10;
              if m<25 then begin m:=m+10; n:=n+10; end;
            goto 1;
            end
                                  else if (ord(w)=077) then
             begin
                           m:=m+10;
                           n:=n+10;
              if m>45 then begin m:=m-10; n:=n-10; end;
              goto 1;
             end;
 goto 1;
2:  window(1,1,80,25);  textbackground(black);
   clrscr;    textcolor(white+BLINK);   gotoxy(12,12);
      write('MARKS SECURED BY YOU ARE: ');write(r); delay(5000);
textmode(0);
end.