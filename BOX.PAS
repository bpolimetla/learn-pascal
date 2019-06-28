program line;
 uses crt,graph;
 var
 i,j:integer;
begin
 detectGraph(i,j);
 initGraph(i,j,' ');
 randomize;
 repeat
 bar3D(50,50,210,200,12,TOPON);
 bar(220,220,640,220);
 moveto(640,220);
 lineto(1,2);
 until keypressed;
 {cleardevice;
 closegraph;  }
end.