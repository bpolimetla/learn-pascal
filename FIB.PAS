PROGRAM FIB;
USES CRT;
VAR
 A,B,C,N : INTEGER;
BEGIN
  CLRSCR;
  WRITE ('Enter how many numbers you want..');
  READLN (N);
  WRITE ('Enter first digit..');READLN (A);
  WRITE ('Enter second digit.');READLN (B);
  WRITELN ('Your required series is.....');
  WRITE (A,'  ',B);
  FOR N:= 1 TO (N-2) DO
  BEGIN
   C:=A+B;
   WRITE ('  ',C);
   A:=B;
   B:=C;
  END;
END.