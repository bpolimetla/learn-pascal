PROGRAM GCDLCM ;
VAR
 A,B,C,A1,B1,C1,L,X,Y :INTEGER;
BEGIN
  WRITE ('ENTER A,B VALUES ');READLN (A,B);
  A1:=A;B1:=B;
  IF A<B THEN
        BEGIN
        A:=A+B;
        B:=A-B;
        A:=A-B;
        END;
  C:=A MOD B;X:=A;Y:=B;
  WHILE C <> 0 DO
    BEGIN
    C1:=C;
    C:=A MOD B;
    A:=B;
    B:=C;
    END;
  IF C=0 THEN
   BEGIN
   C1:=B;
   C:=B;
   END;
   L:=TRUNC((A1*B1)/C1);
  WRITELN;
  WRITELN ('GCD IS...',C,'  LCM IS...',L);
END.
