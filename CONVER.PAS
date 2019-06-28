program conver;
 var
     a,b,c1,c5,c3,c4 :real;
     flag,c,c2 :integer;
 begin
   write ('Enter base,corresponding number...');readln (b,a);
   c3:=1;
   c:=trunc(a);
   flag:=0;
   repeat
     if c<10 then
        begin
        c1:=c;
        flag:=1;
        end
      else  c1:=(c mod 10);
      c2:=c div 10;
      c4:=c1*c3;
      c3:=c3*b;
      c:=c2;
    until flag=1; {integer part complete}
    c5:=1/b;
    c:=frac(a);
    c3:=0;
    repeat
      c1:=trunc(c*10);
      c3:=c3+(c1*c5);
      c:=frac(c*10);
      c5:=c5/b;
    until c=0; {fractional part compleeted}
    c4:=c4+c3;
    writeln('decemal equavalent is...',c4);
 end.