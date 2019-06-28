 program bsrecursion;
 uses crt;
 type
  z=array [1..20] of integer;
 var
  a:z;
  u,l,m,n,elem:integer;

  function bs(b:z;l,u:integer):integer;
  begin
  if l<=u then
            begin
             m:=trunc((u+l)/2);
             if elem<b[m] then bs:=bs(b,l,m-1)
                          else
                           if elem>b[m] then bs:=bs(b,m+1,u)
                                        else bs:=m;
            end
           else
           bs:=0;
  end;

  begin
  clrscr;
  write('No.of elements ');readln(n);
  for u:=1 to n do read(a[u]);

  for u:=1 to n-1 do
  for l:=u+1 to n do
      if a[u]>a[l] then
                 begin
                 elem:=a[u];
                 a[u]:=a[l];
                 a[l]:=elem;
                 end;
  write('Enter element to search ');readln(elem);
  u:=bs(a,1,n);
  if u=0 then write('Element not in list')
         else write('Element found in position ',u);
         repeat
         until keypressed;
end.