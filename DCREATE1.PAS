   (* THIS PROGRAM CREATE DOUBLE LINKED LIST *)

   PROGRAM DCREATE;
   USES CRT;
   type ptr=^node;
       node=record
         llink:ptr;
         data:string[10];
         rlink:ptr;
       end;
   var
       start,endn,temp,x,y:ptr;
       k1:string[10];
        procedure create ;
        begin
          new(temp);
          start:=temp;
          temp^.llink:=nil;
          writeln('enter data endig with 99: ');
          readln(temp^.data);
          while  (temp^.data<>'99') do
          begin
            new(temp^.rlink);
            readln(temp^.rlink^.data);
            temp^.rlink^.llink:=temp;
            temp:=temp^.rlink;
 {            new(x);
            readln(x^.data);
            x^.llink:=temp;
            temp^.rlink:=x;
            temp:=x;}
          end;
          endn:=temp^.llink;
          temp^.rlink:=nil;
    end;

        procedure ftraverse;
        begin

          writeln('printing of the data in forward diretion: ');
          temp:=start;
          while temp^.rlink<>nil do
          begin
           writeln(temp^.data);
           temp:=temp^.rlink;
          end;
        end;
        procedure btraverse;
        begin
          writeln('printing of the data in reverse diretion: ');
          temp:=endn;
          while temp^.llink<>nil do
          begin
           writeln(temp^.data);
           temp:=temp^.llink;
          end;
          writeln(temp^.data);
       end;

       procedure sorting;
       begin
           writeln('sorted list: ');
           temp:=start;
{           while temp^.rlink<>nil do
           begin
              if temp^.data>temp^.rlink^.data then
                         begin
                           temp^.rlink^.llink:=temp^.llink;
                           temp^.llink:=temp^.rlink;
                           temp^.rlink:=temp^.rlink^.rlink;
                           temp^.llink^.rlink:=temp^.rlink;
                         end
                    else
                       temp:=temp^.rlink;
            end;}

            while temp^.rlink<>nil do
            begin
              x:=temp^.rlink;
               WHILE x^.rlink<>nil do
               begin
                 if temp^.data>x^.data then
                     begin
            {           x^.llink:=temp^.llink;
                       temp^.llink^.rlink:=x;
                       x^.rlink^.llink:=temp;
                       temp^.llink:=x;
                       temp^.rlink:=x^.rlink;
                       x^.rlink:=temp;
                     end;}
                     k1:=x^.data; x^.data:=temp^.data;temp^.data:=k1;
                     end;
         {       y:=x; x:=temp; temp:=x;}
                 x:=x^.rlink;
            end;
            temp:=temp^.rlink;
          end;

          ftraverse;
        end;

    BEGIN (*MAIN BLOCK *)
      clrscr;
      create;
      ftraverse;
      btraverse;
      sorting;
     end.