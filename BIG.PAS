PROGRAM BIG;
VAR
  A,B,C :INTEGER;
BEGIN
  WRITE ('Enter three values.......');READLN (A,B,C);
  IF A<B THEN A:=B;
  IF A<C THEN A:=C;
  WRITELN ('BI..GGGGG.... VALUE IS..... ',A);
END.
