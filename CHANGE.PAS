    PROGRAM CHANGE (INPUT,OUTPUT);
    VAR
        N1,N2 : INTEGER;
    BEGIN
        WRITELN ('ENTER ANY TWO NUMBERS');
        READLN (N1,N2);
        N1 := N1 + N2;
        N2 := N1 - N2;
        N1 := N1 - N2;
        WRITELN ('INTERCHANGE OF THESE NUMBERS IS  N1 = ',N1  ,' N2 =',N2);
    END.