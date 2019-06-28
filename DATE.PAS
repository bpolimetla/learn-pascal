program date;
uses crt;
var
  f,m,d,yy,y,y1,y2,y3,od,day :integer;
begin
  clrscr;
  write ('enter required date in mm-dd-yyyy  ');
  read(m,d,yy);writeln;
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
  od:=od+day;
  if (yy mod 400)=0 then f:=28
                    else if (yy mod 4)=0 then f:=29
                                         else f:=28;
  case m of
    1: day:=d;
    2: day:=d+31;
    3: day:=d+f+31;
    4: day:=d+f+62;
    5: day:=d+f+92;
    6: day:=d+f+123;
    7: day:=d+f+153;
    8: day:=d+f+184;
    9: day:=d+f+215;
   10: day:=d+f+245;
   11: day:=d+f+276;
  end;
  day:=day mod 7;
  od:=(od+day) mod 7;
  write('the given date is....');
  case od of
    0: writeln ('sunday');
    1: writeln ('monday');
    2: writeln ('tuesday ');
    3: writeln ('wednessday');
    4: writeln ('thursday');
    5: writeln ('friday');
    6: writeln ('saturday');
  end;
  repeat
  until keypressed;
end.
