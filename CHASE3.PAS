 program bhavani_s_chase;
 uses crt,dos;
 const
    n=20;
 type
   pbp=record
     x,y :integer;
    end;
   s1=record
    x3,y3,x2,y2,di,move,f :integer;
    end;
    find1=record
    c,x:integer;
    y:packed array [0..45] of integer;
    end;
 var
  q:array [0..n-1] of pbp;
  pb:array [1 ..152] of pbp;
  s:packed array [1..20] of s1;
  find:array [6..18] of find1;
  front,rear,dot,key,x1,y1,i,j,score,buf,del1,scan:integer;
  key1,key2:char;
  hh,mm,ss,mmss:word;

 function search( var v,w:integer):boolean;
 var
   l,u,m,flag:integer;
 begin
 flag:=1;
 for i:=0 to n-1 do
 if ((v=q[i].x) and (w=q[i].y)) then
  begin
  flag:=0;exit;
  end;
 if flag<>0 then
 begin
 for i:= 1 to 152 do
 if (v=pb[i].x) and (w=pb[i].y) then
 begin
  flag:=0;exit;
  end;
 end;
 if flag=1 then search:=false
            else search:=true;
 end;

 procedure process;
 var
 a,b,c,d,e,f,g,z1 :integer;
 begin
 { setting of PBP }
   j:=1;
   for i:=6 to 18 do
   begin
    pb[j].x:=i;
    pb[j].y:=10;
    pb[j+1].x:=i;
    pb[j+1].y:=30;
    pb[j+2].x:=i;
    pb[j+2].y:=60;
    j:=j+3;
   end;

   for i:= 6 to 12 do
   begin
    pb[j].x:=i;
    pb[j].y:=20;
    pb[j+1].x:=i;
    pb[j+1].y:=70;
    j:=j+2;
   end;

   for i:= 11 to 19 do
   begin
    pb[j].x:=6;
    pb[j].y:=i;
    pb[j+1].x:=6;
    pb[j+1].y:=i+50;
    j:=j+2;
   end;

   for i:=31 to 49 do
   begin
    pb[j].x:=6;
    pb[j].y:=i;
    j:=j+1;
   end;

   for i:= 13 to 19 do
   begin
    pb[j].x:=12;
    pb[j].y:=i;
    pb[j+1].x:=12;
    pb[j+1].y:=i+50;
    j:=j+2;
   end;

   for i:= 33 to 49 do
   begin
      pb[j].x:=18;
      pb[j].y:=i;
      j:=j+1;
   end;

   for i:= 6 to 10 do
   begin
    pb[j].x:=i;
    pb[j].y:=50;
    pb[j+1].x:=i+8;
    pb[j+1].y:=50;
    j:=j+2;
   end;

   for i:= 41 to 49 do
   begin
    pb[j].x:=10;
    pb[j].y:=i;
    pb[j+1].x:=14;
    pb[j+1].y:=i;
    j:=j+2;
   end;

   for i:= 11 to 13 do
   begin
    pb[j].x:=i;
    pb[j].y:=41;
    j:=j+1;
   end;  { of setting PBP }

  { setting of s }
 z1:=1;randomize;
 for i:= 1 to 5 do s[i].f:=1;
 while (z1 <= 5) do
  begin
  f:=random(23);g:=random(79);
  if (not(search(f,g)) and (f>=3) and (g>=2))then
   begin
    s[z1].x3:=f;s[z1].y3:=g;
    s[z1].x2:=f;s[z1].y2:=g;
    repeat
    s[z1].di:=random(5);
    s[z1].move:=random(4);
    until (s[z1].di<>0) and (s[z1].move<>0);
    z1:=z1+1;
   end;
  end; { of while }
 end;      { of process  }

 procedure printing;
 begin
 clrscr;highvideo;
 gotoxy(25,3);write('Welcome to   C H A S E');normvideo;
 gotoxy(10,8);write('Remember these points...');
 gotoxy(10,11);write('1.Total score is 100');
 gotoxy(10,13);write('2.Use cursor pad to move ');
 gotoxy(10,15);write('3.Esc for abondon from the game ');
 gotoxy(10,17);write('4.If you hit any ', char(2),' then you get 20 points');
 gotoxy(10,19);write('5.If you strike any visuble area except ',char(2));
 gotoxy(10,20);write('                      then you loss 5 points');
 gotoxy(10,22);write('Enter velocity(high 50 > > 300 low).. ');read(del1);
 if del1<50 then del1:=50;
 if del1>300 then del1:=300;
 gotoxy(30,24);write('Press any key to continue...');
 key1:=readkey;
 clrscr;
 gotoxy(10,15);write('This game was developed by  ');highvideo;
 write(char(66),char(104),char(97),char(118),char(97),char(110),char(105),' ');
 write(char(80),char(114),char(97),char(115),char(97),char(100),' ');
 write(char(80),char(111),char(108),char(105),char(109),char(101),char(116),char(108),char(97));
 normvideo;
 gotoxy(10,16);write('                            2/3 M.C.A, V.S.M.College');
 gotoxy(10,17);write('                            Pin: 522 355');
 gotoxy(10,20);write('               Released On  18-September-1995');
 gotoxy(10,24);write('Press any key to continue..');
 delay(1000);key2:=readkey;clrscr;

 { print border }
 highvideo;gotoxy(35,1);
 write(' C H A S E');normvideo;
 for i:=1 to 80 do
 begin
  gotoxy(i,2);write(char(219));
  gotoxy(i,24);write(char(219));
 end;
 for i:=3 to 23 do
 begin
  gotoxy(1,i);write(char(219));
  gotoxy(80,i);write(char(219));
 end;
 { print pbp}
  for i:= 1 to 152 do
  begin
   gotoxy(pb[i].y,pb[i].x);
   write(char(178));
  end;
  { print points }
  for i:=1 to 3 do
  begin
  gotoxy(s[i].y3,s[i].x3);write(char(2));
  end;

 end; { end of printing }


 procedure rat;
  var
   i1,buffer:integer;
  begin    { of procedure rat }
  i1:=1;
  while (i1<=5) do
  begin
    if s[i1].f=0 then i1:=i1+1;
    if (s[i1].move >= 1) and (i1<=5) and (s[i1].f<>0) then
    begin
      buffer:=0;
      case s[i1].di of
      1 : begin
          s[i1].x3:=s[i1].x3-1;
          if s[i1].x3 < 3 then
           begin
             s[i1].move:=0;s[i1].x3:=s[i1].x3+1;
           end
          else buffer:=1;
          end;

      2 : begin
          s[i1].y3:=s[i1].y3+1;
          if s[i1].y3 > 79 then
           begin
             s[i1].move:=0;s[i1].y3:=s[i1].y3-1;
           end
          else buffer:=1;
          end;

      3 : begin
          s[i1].x3:=s[i1].x3+1;
          if s[i1].x3 > 23 then
           begin
             s[i1].move:=0;s[i1].x3:=s[i1].x3-1;
           end
          else buffer:=1;
         end;

      4 : begin
          s[i1].y3:=s[i1].y3-1;
          if s[i1].y3 < 2 then
           begin
             s[i1].move:=0;s[i1].y3:=s[i1].y3+1;
           end
          else buffer:=1;
          end;
       end; { of case 4 }
       if scan=2 then scan:=1
                 else if scan=1 then scan:=2;
       if (buffer=1) then
           begin
             highvideo;
             if not(search(s[i1].x3,s[i1].y3)) then begin
                gotoxy(s[i1].y3,s[i1].x3);write(char(scan)); end;
             if not(search(s[i1].x2,s[i1].y2)) then begin
                gotoxy(s[i1].y2,s[i1].x2);write(' '); end;
             s[i1].y2:=s[i1].y3;s[i1].x2:=s[i1].x3;
             s[i1].move:=s[i1].move-1;i1:=i1+1;
             normvideo;
            end;
        end  { of if }
   else
   begin
    if (i1<= 5) and (s[i1].f<>0) then
    while (s[i1].di=0) or (s[i1].move=0) do
    begin
     randomize;
     s[i1].di:=random(400) mod 5;
     s[i1].move:=random(10);
    end;
   end;
  end;  { of while }
 end; { of procedure rat }

  procedure scor;
  begin
   highvideo;
   gotoxy(70,1);write('Score: ',score:3);normvideo;
  end;

  procedure time;
  begin
   highvideo;
   gettime(hh,mm,ss,mmss);
   gotoxy(1,1);write(hh,':',mm,':',ss,':',mmss);normvideo;
  end;

  procedure add(p,b:integer);

  procedure hai(k:integer);
  begin
  if not(search(s[k].x3,s[k].y3)) then
   begin
   dot:=dot+1;del1:=del1-10;
   score:=score+20;scor;
   gotoxy(s[k].y3,s[k].x3);write(' ');
   s[k].x3:=0;s[k].y3:=0;s[k].f:=0;
   end;
  end;

  begin
     rat;time;
     for i:=1 to 5 do
     begin
     if ((p=s[i].x3) and (b=s[i].y3) and (s[i].f=1)) then
      begin
      dot:=dot+1;del1:=del1-10;
      score:=score+20;scor;
      s[i].x3:=0;s[i].y3:=0;s[i].f:=0;
      end;
    end;
    rear:=(rear+1) mod n;
    q[rear].x:=p;
    q[rear].y:=b;
    gotoxy(b,p);
    case key of
     72: begin
         write(char(30));
         for i:= 1 to 5 do
         if ((p-1=s[i].x3) and (b=s[i].y3) and (s[i].f=1)) then hai(i);
         end;
     75: begin
         write(char(17));
         for i:=1 to 5 do
         if ((p=s[i].x3) and (b-1=s[i].y3) and (s[i].f=1)) then hai(i);
         end;
     80: begin
         write(char(31));
         for i:=1 to 5 do
         if ((p+1=s[i].x3) and (b=s[i].y3) and (s[i].f=1)) then hai(i);
         end;
     77: begin
         write(char(16));
         for i:=1 to 5 do
         if ((p=s[i].x3) and (b+1=s[i].y3) and (s[i].f=1)) then hai(i);
          end;
    end;
   { deletion }
  front :=(front+1) mod n;
  gotoxy(q[front].y,q[front].x);write(' ');
  q[front].x:=0;
  q[front].y:=0;
  end; { of add }

 begin   {* main program  *}
 front:=1;rear:=0;score:=0;dot:=0;scan:=1;
 settime(0,0,0,0);
 clrscr;process;printing;scor;
 for i:=0 to n-1 do
 begin
  q[i].x:=11;q[i].y:=24;
 end;
 x1:=11;y1:=24;key:=3;
 repeat
 buf:=1;
 case key of
  72 : begin                 {USE CURSOR PAD }
      repeat
      if x1>3 then
      begin
      x1:=x1-1;if not(search(x1,y1)) then add(x1,y1)
                                      else
                                      begin
                                      x1:=x1+1;buf:=0;
                                      end;
      end
      else  buf:=0;
      if buf=0 then
       begin
        score:=score-5;scor;
      end;
      delay(del1);
      until keypressed;
      end;
  77 : begin
      repeat
      if y1<79 then
       begin
       y1:=y1+1;if not(search(x1,y1)) then add(x1,y1)
                                      else
                                      begin
                                      y1:=y1-1;buf:=0;
                                      end;
       end
      else  buf:=0;
      if buf=0 then
       begin
        score:=score-5;scor;
       end;
      delay(del1);
      until keypressed;
      end;
  80 : begin
      repeat
      if x1<23 then
      begin
      x1:=x1+1;if not(search(x1,y1)) then add(x1,y1)
                                      else
                                      begin
                                      x1:=x1-1;buf:=0;
                                      end;
      end
      else buf:=0;
      if buf=0 then
       begin
        score:=score-5;scor;
      end;
      delay(del1);
      until keypressed;
      end;
  75 : begin
      repeat
      if y1>2 then
      begin
      y1:=y1-1;if not(search(x1,y1)) then add(x1,y1)
                                      else
                                      begin
                                      y1:=y1+1;buf:=0;
                                      end;
      end
      else buf:=0;
      if buf=0 then
       begin
        score:=score-5;scor;
      end;
      delay(del1);
      until keypressed;
      end;
  end;
  key:=ord(upcase(readkey));
  if (dot=5) then key:=27;
  until (key=27);
  clrscr;gotoxy(20,11);highvideo;
  if ((dot<=5) and (score=100)) then
   write('Your fingure movements are fine');
  gotoxy(25,12);write('Your score is ', score:3);
  gotoxy(10,15);gettime(hh,mm,ss,mmss);
  write(hh,' Hours ',mm,' Minutes and ',ss,' Seconds are Enjoyed/Wasted/Practiced ?');
  delay(2000);normvideo;
  repeat
  until keypressed;
end.

