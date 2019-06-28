uses crt,graph;
var g,h,a,b:integer;
begin
    g:=detect; initgraph(g,h,'');
    settextstyle(0,0,8);
    outtextxy(100,70,'HELLOW');
    repeat
    a:=random(500);
    if a<80 then a:=a+80;
    b:=random(149);
    if b<50 then b:=b+50;
    putpixel(a,b,random(16));
    until keypressed;
    g:=detect; initgraph(g,h,'');
    settextstyle(0,0,7);
    outtextxy(100,70,'THE END');
    readln;
    repeat
    a:=random(500);
    if a<80 then a:=a+80;
    b:=random(149);
    if b<50 then b:=b+50;
    putpixel(a,b,random(16));
    until keypressed;
    readln;
    closegraph;  closegraph;
end.