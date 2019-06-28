program choice;
 uses crt;
 label 10,20,last,30;
 var
   i,x :integer;
   g:char;
 begin
 10:   CLRSCR;
     GOTOXY (41,8); WRITE ('MATRIX OPERATIONS');
     GOTOXY (41,10);WRITE ('ADDITION');
     GOTOXY (41,12);WRITE ('DIFFERENCE');
     GOTOXY (41,14);WRITE ('MULTIPLICATION');
     GOTOXY (41,16);WRITE ('END ');
     GOTOXY (40,10);WRITE (CHAR(16));X:=10;I:=1;
 20: GOTOXY(40,X);G:= UPCASE(READKEY);
     CASE ORD(G) OF
     13: BEGIN
          CLRSCR;
          CASE I OF
          1: BEGIN
              GOTOXY(40,X);WRITE('ADD OVER');
              READLN;
              GOTO 10;
              END;
          2:  BEGIN
              GOTOXY(40,X);WRITE ('SUBTRACTION OVER');
              READLN;
              GOTO 10;
              END;
          3:  BEGIN
              GOTOXY(40,X);WRITE ('MULTIPLICATION OVER');
              READLN;
              GOTO 10;
              END;
          4:  BEGIN
              GOTOXY(35,12);WRITE('THANQUE.......',CHAR(2));
              GOTO 30;
              END;
          END;
          END;
     65:  BEGIN
           GOTOXY(40,X);WRITE(' ');
           IF X=10 THEN X:=16 ELSE X:=X-2;
           IF I=1 THEN I:=4 ELSE I:=I-1;
           GOTOXY(40,X);WRITE(CHAR(16));
           GOTO 20;
           END;
     90:  BEGIN
           GOTOXY(40,X);WRITE(' ');
           IF X=16 THEN X:=10 ELSE X:=X+2;
           IF I=4 THEN I:=1 ELSE I:=I+1;
           GOTOXY(40,X);WRITE(CHAR(16));
           GOTO 20;
           END;
      END;
      GOTO 20;
 30:READLN;
  END.