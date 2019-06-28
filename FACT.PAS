PROGRAM FACT;
VAR
 A,i,p : INTEGER;
BEGIN
   write ('enter number');readln(a);
   p:=1;
   for i:=1 to a do p:=p*i;
   writeln('factorial is ',p);

END.
