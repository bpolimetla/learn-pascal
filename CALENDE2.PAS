program calender;           

uses crt;

var
  cal : string [13];
  pbp : string [19];
 weak :array [1..7] of string[3];
  dm  :array [1..12] of integer;
  f,i,j,k,od,m,yy,y,y1,y2,y3,day,pa,pb,pa1,pa2 :integer;

 procedure print(a,b,c,a1:integer;var a2:integer);
 var
   num,col,b1 : integer;
 begin
   num:=1;
   col:=0;
   repeat
      repeat
         gotoxy(b,a);write(num:3);
        num:=num+1;a:=a+1;
      until (a>a1) or (num>c);
      b:=b+3;col:=col+1;
      if (num <= c) or (a > a1) then a:=a1-6;
      if (col=5) and (num<=c) then
          begin
             b1:=b-15;
             repeat
               gotoxy(b1,a);write(num:3);
               num:=num+1; a:=a+1;
             until (num>c);
             if a>a1 then a:=a1-6;
          end;
      until (num>c);
      a2:=a;
  end; (*of procudere *)

begin
  for i:=1 to 12 do
  begin
  if ((i=1) or (i=3) or(i=5) or (i=7) or (i=8) or (i=10) or(i=12)) then dm[i]:=31
   else  if ((i=4) or (i=6) or(i=9) or (i=11)) then dm[i]:=30;
  end;dm[2]:=28;

  weak[1]:='SUN';
  weak[2]:='MON';
  weak[3]:='TUE';
  weak[4]:='WED';
  weak[5]:='THU';
  weak[6]:='FRI';
  weak[7]:='SAT';

  cal:='CALENDER  FOR';
  pbp:='BHAVANI P POLIMETLA';

  clrscr;
  write ('enter required year yyyy  '); readln(yy);writeln;clrscr;
  y:=yy-1;
  od:=0;
  y1:=y mod 400;
  if y1>=100 then
             begin
              y2:=y1 div 100;
              case y2 of
              1: od:=5;
              2: od:=3;
              3: od:=1;
              end;
             end;
  y2:=y1 mod 100;
  y3:=y2 div 4;
  day:=(2*y3 + (y2-y3)) mod 7;
  od:=(od+day+1) mod 7;
  if (yy mod 400)=0 then f:=0
                    else if (yy mod 4)=0 then f:=1
                                         else f:=0;
  if f=1 then dm[2] := dm[2]+1;

  J:=1;
  for i:=4 to 16 do
  begin
    gotoxy(2,i);
    write(cal[j]);
    j:=j+1;
  end;

  J:=1;
  for i:=4 to 22 do
  begin    
  gotoxy(78,i);
    write(pbp[j]);
    j:=j+1;
  end;

  gotoxy(11,1);write('JANUARY');
  gotoxy(25,1);write('FEBRUARY');
  gotoxy(52,1);write('MARCH');
  gotoxy(67,1);write('APRIL');
  gotoxy(13,9);write('MAY');
  gotoxy(27,9);write('JUNE');
  gotoxy(52,9);write('JULY');
  gotoxy(66,9);write('AUGUST');
  gotoxy(10,17);write('SEPTEMBER');
  gotoxy(24,17);write('OCTOBER');
  gotoxy(50,17);write('NOVEMBER');
  gotoxy(65,17);write('DECEMBER');


  y:=yy;
  gotoxy(2,22);write(y mod 10);
  y:=trunc((y-(y mod 10))/10);
  gotoxy(2,21);write(y mod 10);
  y:=trunc((y-(y mod 10))/10);
  gotoxy(2,20);write(y mod 10);
  y:=trunc((y-(y mod 10))/10);
  gotoxy(2,19);write(y);


  I:=2;J:=0;
  repeat
    k:=1;
    repeat
      gotoxy(39,i);write(weak[k]);
      k:=k+1;
      i:=i+1;
    until (k=8);
    j:=j+1;
    if i=9 then i:=10;
    if i=17 then i:=18;
  until (j>=3);

  pa:=od+2;
  for i:=1 to 12 do
  begin
    if i<=4 then pa1:=8
            else if i<=8 then
                           begin
                            pa1:=16;
                            if (i=5) then pa:=pa+8;
                           end
                         else
                         begin
                          pa1:=24;
                          if (i=9) then pa:=pa+8;
                         end;
    case (i mod 4) of
        1 : pb:=5;
        2 : pb:=20;
        3 : pb:=44;
        0 : pb:=59;
    end;
    print(pa,pb,dm[i],pa1,pa2);
    pa:=pa2;
    end;gotoxy(80,25);
    repeat
    until keypressed;
 end.
