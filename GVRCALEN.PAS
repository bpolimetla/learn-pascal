Program cal(input,output);
uses crt;
label 1;
var i,j,k,l,k3,m,k4,n,i1,j1,k1,k2,l1,m1,n1,z:integer;
begin
textbackground(white);
window(1,1,80,25);
clrscr;
textcolor(black);
gotoxy(1,11);
write('    Enter month : ');
read(j1);
if ((j1<1) or (j1>12))  then
begin
writeln('                     YOU ARE A FOOL');
delay(5000);
goto 1;
end;
writeln;
write('    Enter year : ');
read(i1);
if i1<1 then
begin
writeln('                     YOU ARE A FOOL');
delay(5000);
goto 1;
end;
i:=1;
j:=0;
while i<i1 do begin
if(((i mod 4=0)and (i mod 100<>0))or (i mod 400 =0))then n:=366 else n:=365;
j:=j+n;
if j>700 then j:=j-700;
i:=i+1;
end;
if(((i mod 4=0)and (i mod 100<>0))or (i mod 400 =0))then  m1:=29  else m1:=28;
m:=j;
case (j1) of
1:  k:=m-m1;
2:  k:=m+31-m1;
3:  k:=m+31;
4:  k:=m+62;
5:  k:=m+92;
6:  k:=m+123;
7:  k:=m+153;
8:  k:=m+184;
9:  k:=m+215;
10: k:=m+245;
11: k:=m+276;
12: k:=m+306; end;
l:=(k mod 7)+1;
  window(1,1,80,25);
clrscr;
textcolor(black);
 window(3,5,80,6); textcolor(red+blink);
 write('******* ':30);
 case j1 of
   1:write('January(1)');
   2:write('February(2)');
   3:write('March(3)');
   4:write('April(4)');
   5:write('May(5)');
   6:write('June(6)');
   7:write('July(7)');
   8:write('August(8)');
   9:write('September(9)');
   10:write('October(10)');
   11:write('November(11)');
   12:write('December(12)');
   end;
    write('  ',i1);
    writeln(' *******');
 window(3,7,80,25);
 textcolor(blue);
 writeln('"""""""""""""""""""""""""""""""""""':57); writeln;
   for z:=1 to 69 do write('-'); writeln;
   write('|');
   for k1:=0 to 6 do
   begin
   case ((l+k1+1)mod 7) of
 3:write('Tue    |  ');
 4:write('Wed    |  ');
 5:write('Thu    |  ');
 6:write('Fri    |  ');
 0:write('Sat    |  ');
 1:write('Sun    |  ');
 2:write('Mon    |  ');end;
    end;
 writeln;
 for k1:=1 to 69 do write('-');
writeln;
case j1 of
1,3,5,7,8,10,12:k2:=31;
4,6,9,11:k2:=30;
2:if(( i1 mod 4)=0) then k2:=29 else k2:=28;end;
for k1:= 1 to k2 do
begin
if ((k1=8)or (k1=15)or (k1=22)or(k1=29))  then begin writeln;
 for z:= 1 to 69 do write('-');
 writeln;end;
if ((k1=1) or (k1=8) or (k1=15) or (k1=22) or (k1=29)) then write('|');
write(k1);
if (k1>9) then k4:=8 else k4:=9;
write(' ':k4-3,'|  ');
end;
gotoxy(69,wherey);write('|');
writeln;
for z:= 1 to 69 do write('-');
writeln;
writeln('PRESS CARRIAGE RETURN TO CONTINUE');
readln;
readln;
window(1,1,80,25);
textbackground(black);
textcolor(white);
clrscr;
1:end.



