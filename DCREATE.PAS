   (* THIS PROGRAM PERFORMS OPERA
   TION ON DOUBLE LINKED LIST *)

   PROGRAM DCREATE;
   USES CRT;
   type ptr=^node;
       node=record
         llink:ptr;
         data:integer;
         rlink:ptr;
       end;
   var
       start,endn,temp,x,y:ptr;
       k1,n:integer;choice:char;

     (* this procedure create double linked list *)
        procedure create ;
        begin
          new(temp);
          start:=temp;
          temp^.llink:=nil;
          writeln('enter data endig with 99: ');
          readln(temp^.data);
          while  (temp^.data<>99) do
           begin
              new(temp^.rlink);
              readln(temp^.rlink^.data);

              temp^.rlink^.llink:=temp;
              temp:=temp^.rlink;
           end;
          endn:=temp^.llink;
          temp^.rlink:=nil;
       end; (* of create *)

       (* this traverse the list into forward *)
        procedure ftraverse;
        begin
          writeln('printing in forward diretion: ');
          temp:=start;
          while temp^.rlink<>nil do
           begin
              writeln(temp^.data);
              temp:=temp^.rlink;
           end;
        end; (* of forward *)

     (* this traverse into backword *)
        procedure btraverse;
        begin
          writeln('printing in backword diretion: ');
          temp:=endn;
          while temp^.llink<>nil do
           begin
              writeln(temp^.data);
              temp:=temp^.llink;
           end;
          writeln(temp^.data);
        end;  (* of backword *)

      (* this sorted the list *)
       procedure sorting;
       begin
           writeln('sorted list: ');
           temp:=start;
            while temp^.rlink<>nil do
             begin
                x:=temp^.rlink;
                WHILE x^.rlink<>nil do
                 begin
                   if temp^.data>x^.data then
                           begin
                              k1:=x^.data;
                              x^.data:=temp^.data;
                              temp^.data:=k1;
                           end;
                   x:=x^.rlink;
                end;
               temp:=temp^.rlink;
             end;
          ftraverse;
        end; (* of sorting *)

      (* this is for insertion *)
      procedure insertion;
      begin
         temp:=start;
          new(x);
          write('enter new data');
          readln(x^.data);
          write('choose your choice ');
          write('(0-starting the list & 1-else) : ');
          readln(k1);
          if k1=0 then
                   begin
                     x^.llink:=nil;
                     x^.rlink:=start;
                     start^.llink:=x;
                     start:=x;
                  end
             else
                begin
                   writeln('after which element you want to insert: ');
                   readln(n);
                   while (temp^.data<>n) and (temp^.rlink<>nil) do
                   temp:=temp^.rlink;
                   if temp^.rlink=nil then temp:=temp^.llink;
                   x^.rlink:=temp^.rlink;
                   temp^.rlink^.llink:=x;
                   x^.llink:=temp;
                   temp^.rlink:=x;
               end;
               ftraverse;
            end; (* of insertion *)

    BEGIN (*MAIN BLOCK *)
      clrscr;
      create;
      repeat
      writeln('choose your choice ');
      writeln('f-forward');
      writeln('b-backward');
      writeln('s-sorting ');
      writeln('i-insertion ');
      writeln('e-exit');
      readln(choice);
      case choice of
        'f':  ftraverse;
        'b':  btraverse;
        's':  sorting;
        'i':  insertion;
      end;
      until (choice='e');
      clrscr;
   END.
