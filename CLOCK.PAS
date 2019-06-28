uses dos,graph,crt;
procedure analog;
var z,x,w,u,xxx,nn,n,i1,j1,i2,j2,y,yy,yyy,p,i,j,m,a,b,g,zzz,e,f,c,d,h,k,l:integer;
    hh,mm,ss,mmss:word;
    zz,yyyy,xx:real;
begin
   gettime(hh,mm,ss,mmss);
   clrscr;
   write(hh,':',mm,':',ss,':',mmss);
   readln;
   g:=detect; initgraph(g,h,'');
  setcolor(blue);
  outtextxy(25,25,'MADE IN INDIA');
  circle(320,100,200);
  circle(320,100,201);
  circle(320,100,202);
  circle(320,100,203);
  circle(320,100,204);
  circle(320,100,205);
  circle(320,100,1);
  circle(320,100,2);
  circle(320,100,3);
  k:=320;l:=100;
  outtextxy(315,25,'12');
  outtextxy(315,170,'6');
  outtextxy(500,96,'3');
  outtextxy(145,96,'9');
  i1:=0;i2:=0;
  rectangle(0,0,639,199);
  putpixel(237,51,15);
  putpixel(190,71,15);
  putpixel(407,51,15);
  putpixel(450,71,15);
  putpixel(407,151,15);
  putpixel(450,121,15);
  putpixel(237,151,15);
  putpixel(190,121,15);
repeat
  gettime(hh,mm,ss,mmss);
  z:=ss div 15;
  zzz:=ss mod 15;
  zz:=zzz;
  m:=z*15;
  if ((m>=0) and  (m<15)) then begin
  i:=320+trunc(zz*(50/15)); j:=50+trunc(zz*(50/15)); end;
  if ((m>=15) and (m<30)) then begin
                  i:=370-trunc(zz*(50/15)); j:=100+trunc(zz*(50/15)); end;
  if ((m>=30) and (m<45)) then  begin
                    i:=320-trunc(zz*(50/15));j:=150-trunc(zz*(50/15)); end;
  if ((m>=45) and (m<60)) then begin
                  i:=270+trunc(zz*(50/15)); j:=100-trunc(zz*(50/15)); end;
  line(k,l,i,j);
  delay(950);
  setcolor(black);
  line(k,l,i,j);
  setcolor(white);
  x:=mm div 15;
  xxx:=mm mod 15;
  xx:=xxx;
  nn:=x*15;
  if((m=0)or(i1=0)) then
begin
      if i1<>0 then begin setcolor(black);
      line(k,l,i1,j1);
      setcolor(white); end;
      if ((nn>=0)and(nn<15)) then
      begin
      i1:=320+trunc(xx*(50/15));
      j1:=50+trunc(xx*(50/15));
      end;
            if ((nn>=15)and(nn<30)) then
      begin
      i1:=370-trunc(xx*(50/15));
      j1:=100+trunc(xx*(50/15));
      end;
            if ((nn>=30)and(nn<45)) then
      begin
      i1:=320-trunc(xx*(50/15));
      j1:=150-trunc(xx*(50/15));
      end;
            if ((nn>=45)and(nn<60)) then
      begin
      i1:=270+trunc(xx*(50/15));
      j1:=100-trunc(xx*(50/15));
      end;
      line(k,l,i1,j1);
      if (((mm mod 12)=0) or (i2=0)) then
      begin
      if (i2<>0) and (((mm mod 12)=0))then begin
      setcolor(black); line(k,l,i2,j2);
      setcolor(white);end;
      if hh>12 then begin y:=hh-12; end else y:=hh;
      if hh=0 then y:=12;
      yy:=y mod 3;
      yyy:=y div 3;
      yyyy:=yy;
      u:=mm div 12;
      p:=yyy*15;
      if (((p>=0)and(p<15))or(p>=60)) then begin
      i2:=320+trunc(((yyyy*5)+u)*(50/15));
      j2:=50+trunc(((yyyy*5)+u)*(50/15)); end;
            if ((p>=15)and (p<30)) then begin
      i2:=370-trunc(((yyyy*5)+u)*(50/15));
      j2:=100+trunc(((yyyy*5)+u)*(50/15)); end;
                  if ((p>=30)and (p<45)) then begin
      i2:=320-trunc(((yyyy*5)+u)*(50/15));
      j2:=150-trunc(((yyyy*5)+u)*(50/15)); end;
            if ((p>=45)and (p<60)) then begin
      i2:=270+trunc(((yyyy*5)+u)*(50/15));
      j2:=100-trunc(((yyyy*5)+u)*(50/15)); end;
end;
      end;
      line(k,l,i2,j2);
      line(k,l,i1,j1);
      if ((mm=30)and(ss=0)) then write(chr(7));
      if ((mm=0)and(ss=0)) then
      for w:=1 to y do begin write(chr(7)); delay(10); end;
      until keypressed;
  closegraph;readln;
end;
procedure digital;
var  g,h,z1,z2,z3,z4,z5,z6,z7,y,i,z:integer;
     hhh,mmm,sss,ms:word;
procedure x1(i:integer); begin rectangle(215+i,80,235+i,80); end;
procedure x2(i:integer); begin rectangle(215+i,80,215+i,98); end;
procedure x3(i:integer); begin rectangle(215+i,102,215+i,120); end;
procedure x4(i:integer); begin rectangle(215+i,120,235+i,120); end;
procedure x5(i:integer); begin rectangle(235+i,80,235+i,98); end;
procedure x6(i:integer); begin rectangle(235+i,102,235+i,120); end;
procedure x7(i:integer); begin rectangle(215+i,100,235+i,100); end;
procedure zyx (i:integer);
begin
setcolor(black);
    rectangle(215+i,80,235+i,80);
    rectangle(215+i,80,215+i,98);
    rectangle(215+i,102,215+i,120);
    rectangle(215+i,120,235+i,120);
    rectangle(235+i,80,235+i,98);
    rectangle(235+i,102,235+i,120);
    rectangle(215+i,100,235+i,100);
setcolor(white);
end;
procedure xyz(y,z:integer);
begin
case y of
1: begin x5(z);x6(z);end;
2: begin x5(z);x1(z);x3(z);x4(z);x7(z);end;
3: begin x5(z);x6(z);x1(z);x4(z);x7(z);end;
4: begin x5(z);x6(z);x2(z);x7(z);end;
5: begin x6(z);x1(z);x2(z);x4(z);x7(z);end;
6: begin x6(z);x1(z);x2(z);x3(z);x4(z);x7(z);end;
7: begin x5(z);x6(z);x1(z);end;
8: begin x5(z);x6(z);x1(z);x2(z);x3(z);x4(z);x7(z);end;
9: begin x5(z);x6(z);x1(z);x2(z);x4(z);x7(z);end;
0: begin x5(z);x6(z);x1(z);x2(z);x3(z);x4(z); end;end;
end;
begin
   g:=detect; initgraph(g,h,'');
   rectangle(100,70,540,130);
   repeat
   gettime(hhh,mmm,sss,ms);
   z1:=hhh mod 12;
   z2:=z1 div 10;
   z3:=z1 mod 10;
   z4:=mmm div 10;
   z5:=mmm mod 10;
   z6:=sss div 10;
   z7:=sss mod 10;
   zyx(190);xyz(z7,190);
   if z7=0 then begin zyx(160); end;
   xyz(z6,160);
   if((z7=0)and(z6=0))then zyx(110);
   xyz(z5,110);
   if ((z7=0)and(z6=0)and(z5=0)) then zyx(80);
   xyz(z4,80);
   if ((z7=0)and(z6=0)and(z5=0)and(z4=0))then zyx(30);
   xyz(z3,30);
   if ((z4=0)and(z5=0)and(z6=0)and(z7=0)and(z3=0)) then zyx(0);
   xyz(z2,0);
   delay(950);
until keypressed;
readln;
closegraph;
end;
begin
analog;
digital;
end.


