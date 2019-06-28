Program letter(input,output);
label 10,20,30,40;
Var   i,c,j,n,k1,k2,k3,k4,k5,k6,k7,k8,k9:integer;
procedure abc (i:integer);
begin
case  i of
         0:   j:=10;
         1:   write(' one ');
         2:   write(' two ');
         3:   write(' three ');
         4:   write(' four ');
         5:   write(' five ');
         6:   write(' six ');
         7:   write(' seven ');
         8:   write(' eight ');
         9:   write(' nine ');
        10:   write(' ten ');
        11:   write(' eleven ');
        12:   write(' twelve ');
        13:   write(' thirteen ');
        14:   write(' fourteen ');
        15:   write(' fifteen ');
        16:   write(' sixteen ');
        17:   write(' seventeen ');
        18:   write(' eighteen ');
        19:   write(' ninteen ' );
       end;
   end;
Begin
40:     writeln;
     write('ENTE THE NUMBER=> ');
     read(n);
     if (n=0) then writeln('zero');
     if (n<0) then
     begin
     writeln('a negative number');
     n:=(-1)*n
     end;
     j:=0;
     k1:=n mod 1000;
     k2:=n div 1000;
     if k2>=20 then
     begin
     k3:=k2 mod 10;
     k4:=k2 div 10;
     case k4 of
     2: write('twenty');
     3: write('thirty');
     end;
     write(' ');
     abc(k3);
     write(' ');
     write('thousand');
     end;
     if(k2<20) then
     begin
     write(' ');
     abc(k2);
     if j=10 then goto 10 ;
     write('  thousand  ');
10:  j:=0;
     end;
     k5:=((n mod 1000) div 100);
     write(' ');
     abc(k5);
     write(' ');
     if j=10 then goto 20;
     write('hundred');
20:  j:=0;
     k6:=k1 mod 100;
     k7:=k6 mod 10;
     k8:=k6 div 10;
     if(k8>=2)then
     begin
     case k8 of
     2:  write(' twenty ');
     3:  write(' thirty ');
     4:  write(' fourty ');
     5:  write(' fifty ');
     6:  write(' sixty ');
     7:  write(' seventy ');
     8:  write(' eighty ');
     9:  write(' ninty ');
      end;
      write(' ');
      abc(k7);
      end;
    if (k8<=1)then
    begin
    k9:=(k8*10) +k7;
    abc(k9);
    end;
    writeln;
    write('are you want to do again? (y=1)');
    read(c);
    if(c=1) then goto 40
End.
