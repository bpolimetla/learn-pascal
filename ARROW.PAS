PROGRAM ARROW;
USES CRT;
VAR
 G:CHAR;
BEGIN
  REPEAT
  G:=READKEY;
  IF ORD(G)=56 THEN WRITE ('UP ARROW');
  IF ORD(G)=52 THEN WRITE ('LEFT ARROW');
  IF ORD(G)=54 THEN WRITE ('RIGHT ARROW');
  IF ORD(G)=50 THEN WRITE ('DOWN ARROW');
  WRITELN (G,'  ',ORD(G));
  UNTIL ORD(G)=65 ;
END.