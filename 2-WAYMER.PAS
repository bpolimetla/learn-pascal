 program waymergesort;
 uses crt;
 type
  xfile =array [1..20] of integer;
 var
  x:xfile;
  p,n:integer;

 procedure merge(var x,z:xfile;l,m,n :integer);
 var
  i,j,k,t :integer;
 begin
  i:=l;k:=l;j:=m+1;
  while ((i<=m) and (j<=n)) do
  begin
   if x[i]<=x[j]
   then
    begin
    z[k]:=x[i];i:=i+1;
    end
   else
    begin
    z[k]:=x[j];j:=j+1;
    end;
    k:=k+1;
  end;
  if i>m then  for t :=j to n do z[k+t-j]:=x[t]
         else  for t :=i to m do z[k+t-i]:=x[t];
 end;

 procedure mpass(var x,y:xfile; n,l:integer);
 var
  i,t :integer;
 begin
  i:=1;
  while i<=(n-2*l+1) do
  begin
   merge(x,y,i,i+l-1,i+2*l-1);
   for p:= 1 to n do write(x[p]:4);writeln;
   i:=i+2*l;
  end;
  if (i+l-1)<n then
  begin
  for p:= 1 to n do write(x[p]:4);writeln;
  merge(x,y,i,i+l-1,n);
  end
  else
   for t:=i to n do y[t]:=x[t];
 end;


 procedure msort(var x:xfile ; n:integer);
 var
  l:integer;
  y:xfile;
 begin
  l:=1;
  while l<n do
  begin
   mpass(x,y,n,l);
   l:=2*l;
   mpass(y,x,n,l);
   l:=2*l;
  end;
 end;

 begin
 clrscr;
 write('Enter no of elements ');readln(n);
 for p:=1 to n do read(x[p]);
 msort(x,n);
 writeln('Sorted list is ');
 for p:= 1 to n do write(x[p]:4);
 repeat
 until keypressed;
end.

