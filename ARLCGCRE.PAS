 program arlcgcrecursion;
 uses crt;
 const
   m=20;
 var
  aa: array [1..m] of integer;
  c,l,g,i,j,n1,x,y,pbp :integer;

 function gcd(m,n:integer):integer;
 begin
 if n>m then gcd:=gcd(n,m)
        else
            if n=0 then gcd:=m
                   else gcd:=gcd(n,m mod n);
 end;

 function lcm(m,n:integer):integer;
 var
  z:integer;
 begin
 if n<m then z:=(m mod n)
        else z:=(n mod m);
 if z=0 then
         begin
         if n<m then lcm:=m
                else lcm:=n;
         end
       else
         begin
         n:=trunc(n/pbp);pbp:=pbp+1;
         lcm:=lcm(m,(pbp*n));
         end;
 end;

 begin   (* main begin  *)
   clrscr;
   write('ENTER HOW MANY NUMBERS YOU WANT..?');readln(n1);
   writeln('ENTER ',n1,' NUMBERS BY SPACE...');
   for i:=1 to n1 do read(aa[i]);

   l:=aa[1];g:=aa[1];
   for i:=2 to n1 do
   begin
    pbp:=1;
    x:=aa[i];
    if l>x then l:=lcm(l,x)
           else l:=lcm(x,l);
    y:=aa[i];
    g:=gcd(g,y);
  end;
   writeln('LCM IS ',l);
   writeln('GCD IS ',g);
   repeat
   until keypressed;
 end.
