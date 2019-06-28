program cireq;
uses crt;
type
 pbp=^node;
 node=record
 ll:pbp;
 rl:pbp;
 data:integer;
 end;

 var
  head,y,temp:pbp;
  g:integer;


 procedure add;
  begin
  y:=head;
  new(temp);
  y^.rl^.ll:=temp;
  temp^.rl:=y^.rl;
  temp^.ll:=y;
  y^.rl:=temp;
  write('enter data ');readln(temp^.data);
  end;

 procedure del;
  begin
  new(y);
  y:=head;
  if y=head^.rl then writeln('Q empty')
                    else
                       begin
                       writeln(y^.ll^.data,' is deleted');
                       temp:=y^.ll;
                       y^.ll:=y^.ll^.ll;
                       y^.ll^.rl:=Y^.ll;
                       dispose(temp);
                       end;
  end;

  procedure dis;
  begin
  new(y);
  y:=head^.rl;
  while (y <> head^.ll) do
  begin
   write(y^.data,'<--->');
   y:=y^.rl;
  end;
  writeln (y^.data);
  end;

  begin
  clrscr;
  write('1 add 2 delete ');
  new(head);
  head^.ll:=head;
  head^.rl:=head;
  head^.data:=0;
  g:=0;
  while g<3 do
  begin
   write('enter option ');
   readln(g);
   case g of
    1: add;
    2:del;
   end;
   dis;writeln;
  end;
 end.