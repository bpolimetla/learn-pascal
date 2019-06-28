program digits(input,output);
label 10;
var l1,m1,i,j,k,l,m,n,i1,j1,k1:integer;
    i2:real;
    a,b:array[0..100] of integer;
begin
    write('Enter number');
    read(n);
    i1:=0;
 repeat
    k1:=n mod 10;
    a[i1]:=k1;
    n:=n div 10;
    i1:=i1+1;
 until n=0;
    i1:=i1-1;
    k:=i1;
    for i1:=0 to 100 do
    begin
    b[i1]:=0;
    end;
 repeat
    for j:=1 to 24 do
    begin
    writeln
    end;
    for j1:= 1 to 35 do
    begin
    write(' ');
    end;
    for k1:= k downto 0 do write(b[k1]);
    for m1:=1 to 12 do writeln;
    for i:=0 to k do
    begin
    l:=i;
    if(b[i]<>9) then goto 10;
    end;
 10:   for m:=0 to l do
    begin
    b[m]:=(b[m]+1) mod 10;
    end;
    l1:=0;
    for i1:=0 to k do
    Begin
    if (a[i1]<>b[i1]) then  l1:=10;
    end;
    i2:=0.0;
    repeat
    i2:=i2+0.0001;
    until (i2>1.8);
    until (l1<>10)
end.