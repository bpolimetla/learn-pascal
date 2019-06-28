        program queue5a; (* CIRCULAR Q with arrays*)
        uses crt;
        label 60;
        const n=10;
        var
           g:char;
           front,rear,i,j,x1:integer;
           queue:array[0..n-1] of integer;

        procedure add;
         var item :integer;
         begin
          if (front=(rear+1) mod n) then
                   begin
                    gotoxy(10,17);
                    write('queue is full');
                    repeat
                    until keypressed;
                    gotoxy(10,17);
                    write('              ');
                   end
                    else
                      begin
                       gotoxy(10,15);
                       write('enter new element :');read(item);
                       rear:=(rear+1) mod n;
                       queue[rear]:=item;
                      end;
        end;

        procedure delete;
             begin
               if front=rear then
                     begin
                      gotoxy(10,17);
                      write('quue is empty');
                      repeat
                      until keypressed;
                      gotoxy(10,17);
                      write('              ');
                     end
                       else
                        begin
                         front:=(front+1) mod n;
                         gotoxy(30,15);write('    ');
                         gotoxy(10,15);
                         write('delete element is: ', queue[front]);
                         queue[front]:= 0;
                        end;
              end;

        begin
            clrscr;
            front:=0; rear:=0;
            for i:=0 to n-1 do queue[i]:=0;

     60:    gotoxy (35,2);write ('Circular Q demo (with arrays)');
            gotoxy (10,5);write ('Addition');
            gotoxy (10,7);write ('Deletion');
            gotoxy (9,5);write(char(16));
            x1:=5;j:=1;
            gotoxy(10,23);write('Press Spacebar for change option');
            gotoxy(10,24);write('      Esc for escape');

            repeat
            gotoxy (9,x1);g:=upcase(readkey);
            case ord(g) of
            13 : begin
                 case j of
                 1 : add;
                 2 : delete;
                 end;
                 gotoxy(10,19);write('Circular Q is ');
                 for i:=0 to n-1 do write(queue[i]:4);
                 end;
            32 : begin
                 if j=1 then
                          begin
                          gotoxy(9,x1);write(' ');
                          j:=2;x1:=7;
                          gotoxy (9,x1);write(char(16));
                          end
                        else
                          begin
                          gotoxy(9,x1);write(' ');
                          j:=1;x1:=5;
                          gotoxy (9,x1);write(char(16));
                          end;
                  end;
            27:  exit;
            else goto 60;
           end; (* of case main *)
           until (ord(g)=27);
  end.