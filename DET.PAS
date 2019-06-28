program determ;
uses crt;
var
 a: array [1..10,1..10] of integer;
 b: array [1..10,1..20] of integer;
 c,c1,c2,i,i1,j,k,k1,n,det : integer;
begin
  clrscr;
  write('ENTER ORDER ');readln(n);
  for i:=1 to n do
  begin
    writeln('ENTER ',n,' ELEMENTS FOR ',i,' ROW');
    c:=n+1;
    for j:=1 to n do
     begin
      read (a[i,j]);
      b[i,j]:=a[i,j];
      b[i,c]:=a[i,j];
      c:=c+1;
     end;
    readln;
  end; (* a readed, b becomes n X 2n-1 matrix  *)
 c1:=0;k:=1;det:=0;
 for i:= 1 to n do
 begin
  c:=1;i1:=0;
  for j:=k to (k+n-1) do
  begin
   c:=c*b[i1+1,j];
   i1:=i1+1;
  end;
  k:=k+1;c1:=c1+c;
 end;
 c2:=0;k:=1;
 for i:= n downto 1 do
 begin
  c:=1;i1:=n-1;
  for j:=k to (k+n-1) do
  begin
   c:=c*b[i1+1,j];
   i1:=i1-1;
  end;
  k:=k+1;c2:=c2+c;
 end;
 det:=c1-c2;
 writeln ('DETEREMINENT OF GIVEN MATRIX IS  ',det);
 repeat
 until keypressed;
end.