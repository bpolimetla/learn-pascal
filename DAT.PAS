                       (*program for date conversion*)

PROGRAM DATE(INPUT,OUTPUT);
USES CRT;
VAR
  DD,MM,YY:INTEGER;

BEGIN
CLRSCR;
    WRITE('ENTER DATE LIKE DD MM YY');
    READLN(DD, MM, YY);
    IF( DD=11) OR( DD=12) OR (DD=13) THEN WRITE(DD,'TH ')
    ELSE
    BEGIN
        WRITE (DD);
        CASE (DD MOD 10) OF
       1:WRITE ('ST ');
       2:WRITE ('ND ');
       3:WRITE ('RD ');
         0,4,5,6,7,8,9:WRITE ('TH ');
    END;
    CASE MM OF
      1 :WRITE('JAN');
      2 :WRITE('FEB');
      3 :WRITE('MAR');
      4 :WRITE('APRL');
      5 :WRITE('MAY');
      6 :WRITE('JUN');
      7 :WRITE('JUL');
      8 :WRITE('AUG');
      9 :WRITE('SEPT');
     10 :WRITE('OCT');
     11 :WRITE('NOV');
     12 :WRITE('DEC');
     END;
     WRITE ('  ',YY);
     END;
END.
