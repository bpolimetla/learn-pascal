program wind1;
uses crt,graph;
var
 i,j:integer;
 x,y :byte;
begin
clrscr;
detectgraph(i,j);
  initgraph(i,j,' ');
{  highvideo;}
 repeat
 x:=succ( random(80));
 y:=succ( random(25));
 rectangle (x, y, x + 10, y + 8);
 textbackground( black);
 clrscr;
   until keypressed;
 textcolor(white);
 textbackground(black);highvideo;write('high');
 x:=2;y:=24;
  window(x,x,y,y);
 repeat
 until keypressed;normvideo;
{ Window (x, y, x + random(10), y + random(8));
 window (x, y, x + random(10), y + random(8));}
 closegraph;
end.
