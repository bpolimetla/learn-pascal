 program doublell;
 uses crt;
 label 10;
 type
   pbp=^node;
   node=record
   data:integer;
   ll:pbp;
   rl:pbp;
   end;
 var
   temp,start,fresh,stop :pbp;
   n,elem,i,x :integer;
   g1:char;

  procedure ftraverse;
  begin
   gotoxy(6,12);write('List is ');
   gotoxy(6,15);
   for elem:=1 to 50 do write('   ');
   gotoxy(6,15);
   temp:=start;write('Nil<--->');
   repeat
    write(temp^.data,'<--->');
    temp:=temp^.rl;
   until (temp^.rl = nil);
   write(temp^.data,'<--->');
   write('Nil');
  end;
 procedure creat;
  begin
   new(start);gotoxy(6,14);
   write('Enter 0 for end else any integer');gotoxy (6,15);
   read(start^.data);
   start^.ll:=nil;
   temp:=start;
   while (temp^.data<>0) do
   begin
    new(fresh);
    read(fresh^.data);
    temp^.rl:=fresh;
    fresh^.ll:=temp;
    temp:=temp^.rl;
   end;
   temp^.ll^.rl:=nil;
   stop:=temp^.ll;
   dispose(temp);
   gotoxy(6,14);write('                                ');
   ftraverse;
   end;

  procedure btraverse;
  begin
   gotoxy(6,12);write('List is ');
   gotoxy(6,15);
   for elem:=1 to 60 do write(' ');
   gotoxy(6,15);
   temp:=stop;write('Nil<--->');
   repeat
    write(temp^.data,'<--->');
    temp:=temp^.ll;
   until (temp^.ll = nil);
   write(temp^.data,'<--->');
   write('Nil');
   repeat
   until keypressed;
   ftraverse;
  end;

  procedure delete;
  var
   g:char;
  begin
   repeat
   temp:=start;
   gotoxy(25,3);
   write('            Deletion ');gotoxy(20,4);
   write('f-first,l-last,m-midle ');
   g:=upcase(readkey);
   case g of
  'F': begin
       temp:=start;
       gotoxy(20,5);
       writeln(temp^.data,' deleted');
       start:=temp^.rl;
       start^.ll:=nil;
       dispose(temp);
       ftraverse;
       end;
  'L': begin
       temp:=stop;
       gotoxy(20,5);
       writeln(temp^.data,' deleted');
       stop:=temp^.ll;
       stop^.rl:=nil;
       {dispose(temp);}
       ftraverse;
       end;
  'M': begin
       gotoxy(20,5);
       write(' Which element ');
       readln(elem);
       temp:=start;
       while (temp^.data<>elem) do
           temp:=temp^.rl;
      temp^.ll^.rl:=temp^.rl;
      temp^.rl^.ll:=temp^.ll;
      gotoxy(20,5);
      writeln(temp^.data,' Dleted');
      dispose(temp);
      ftraverse;
      end;
    end; (* of case *)
    until (ord(g)=27);
    gotoxy(25,3);write('                         ');
    gotoxy(20,4);write('                         ');
    gotoxy(20,5);write('                         ');
   end; (* of delete *)

   procedure insert;
   var
    g:char;
   begin
    repeat
    gotoxy(25,3);
    write('            insertion ');gotoxy(20,4);
    write('f-first,l-last,m-midle ');
    g:=upcase(readkey);
    case g of
    'F': begin
         gotoxy(20,5);
         write('Enter element ');readln(elem);
         new(fresh);
         fresh^.rl:=start;
         start^.ll:=fresh;
         fresh^.ll:=nil;
         fresh^.data:=elem;
         start:=fresh;
         ftraverse;
         end;
    'L': begin
         new(fresh);
         stop^.rl:=fresh;
         fresh^.ll:=stop;
         fresh^.rl:=nil;
         stop:=fresh;
         gotoxy(20,5);
         write('Enter element ');
         readln(fresh^.data);
         ftraverse;
         end;
    'M': begin
         gotoxy(20,5);
         write(' After which element ');readln(elem);
         temp:=start;
         while (temp^.data<>elem) do temp:=temp^.rl;
         new (fresh);gotoxy(20,5);
         write('Enter data            ');readln(elem);
         fresh^.data:=elem;
         fresh^.ll:=temp;
         fresh^.rl:=temp^.rl;
         temp^.rl:=fresh;
         ftraverse;
         end;
     end;  (* of case *)
     until (ord(g)=27);
     gotoxy(25,3);write('                       ');
     gotoxy(20,4);write('                       ');
     gotoxy(20,5);write('                       ');
   end; (* of procedure *)

   procedure search;
   var
    rc,lc :integer;
   begin
     temp:=start;gotoxy(25,3);
     write ('enter element ');readln(elem);
     rc:=1;
     while (temp^.data<>elem)and(temp^.rl<>nil) do
     begin
      temp:=temp^.rl;
      rc:=rc+1;
     end;
     lc:=1;
     temp:=stop;
     while (temp^.data<>elem)and(temp^.ll<>nil) do
     begin
      temp:=temp^.ll;
      lc:=lc+1;
     end;

     gotoxy(25,4);
     if ((temp^.rl=nil) and (temp^.data<>elem))then
       writeln('Given element not in list')
      else writeln('Position  from right: ', rc,' from left: ',lc);
      repeat
      until keypressed;
     gotoxy(25,3);write('                  ');
     gotoxy(25,4);write('                                    ');
     ftraverse;
    end; (* of search *)

   procedure sort;
   var
    k:pbp;
    k1:integer;
   begin
    temp:=start;
    fresh:=temp;
    while(temp^.rl<>nil) do
    begin
     k:=temp;
     k^.data:=temp^.data;
     fresh:=temp^.rl;
      repeat
       if (fresh^.data < k^.data) then
        begin
         k1:=fresh^.data;
         fresh^.data:=k^.data;
         k^.data:=k1;
        end;
       fresh:=fresh^.rl;
      until (fresh = nil);
      temp:=temp^.rl;
    end;  (* of while *)
    ftraverse;
   end; (* of sort *)

  procedure reverse;
  begin
  new(temp);
  start:=temp;
  start^.ll:=nil;
  while(stop^.ll<>nil)do
  begin
   temp^.data:=stop^.data;
   new(temp^.rl);
   temp:=temp^.rl;
   stop:=stop^.ll;
  end;
  temp^.data:=stop^.data;
  temp^.rl:=nil;
  stop:=temp;
  ftraverse;
  end;

  begin (* of main program *)
  clrscr;
  gotoxy(6,24);write('A for ',char(24),' Z for ',char(25),' Esc for ...');
  gotoxy(25,1);write('Double Linked List Demo');
  gotoxy(6,3);write('Creation');
  gotoxy(6,4);write('Deletion');
  gotoxy(6,5);write('Insertion');
  gotoxy(6,6);write('Reverse');
  gotoxy(6,7);write('Btraverse');
  gotoxy(6,8);write('Search');
  gotoxy(6,9);write('Sort');
  gotoxy(5,3);write(char(16));x:=3;i:=1;
  repeat
  10 : gotoxy(5,x);g1:=upcase(readkey);
       case ord(g1) of
       13 : begin
             case i of
              1:creat;
              2:delete;
              3:insert;
              4:reverse;
              5:btraverse;
              6:search;
              7:sort;
             end;
            end;
       65 : begin
            gotoxy(5,x);write(' ');
            if x=3 then x:=9 else x:=x-1;
            if i=1 then i:=7 else i:=i-1;highvideo;
            gotoxy(5,x);write(char(16));normvideo;
            goto 10;
            end;
       90 : begin
            gotoxy(5,x);write(' ');
            if x=9 then x:=3 else x:=x+1;
            if i=7 then i:=1 else i:=i+1;highvideo;
            gotoxy(5,x);write(char(16));normvideo;
            goto 10;
            end;
       27 : begin
            clrscr;
            gotoxy(35,12);write('THANQUE......',char(2));
            textcolor(white+blink);
            textbackground(black);
            gotoxy(10,24);write('Please give your ideas & suggetions');
            repeat
            until keypressed;
            normvideo;
            end;
       end;  (* of case *)
  until (ord(g1)=27);
  end.