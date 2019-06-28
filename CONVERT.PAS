    PROGRAM convert(input,output);
    uses crt;
    VAR
        a:array[1..10] of integer;
        num,i,k,d:integer;
        choice:char;
    BEGIN
        clrscr;
        writeln('enter b or d b for binary&d for decimal');
        read(choice);
        case choice of
        'b': begin
                writeln('enter decimal number');
                read(num);
                i:=0;
                WHILE num<>0 DO
                   begin
                       i:=i+1;
                       a[i]:=num mod 2;
                       num:=num div 2;
                   end;
                for k:=i downto 1 do
                     write(a[k]);
           end;
         'd':   begin
                  i:=0;
                  d:=0;
                   writeln('enter binary number');
                   read(num);
                   while num<>0 do
                   begin
                      d:=d+trunc(num mod 10*exp(i*ln(2)));
                      num:=num div 10;
                       i:=i+1;
                   end;
                   writeln('decimal numbeer',d);
         end;
            end ;
    END.
