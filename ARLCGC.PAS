program arlcgc;
uses crt;
const
   m=20;
var
 aa: array [1..m] of integer;
 c,l,l1,g,g1,i,j,n,x,y :integer;

procedure lcm(a,b:integer; var d:integer);
 var
  k: integer;
 begin
   if(b mod a)=0 then d:=b
   else
    begin
     k:=a;
     repeat
     k:=k+a;
     until (k mod b)=0;
     d:=k;
    end;
 end;

procedure gcd(a,b:integer;var d:integer);
 begin
 if ((a-b)=1) and (odd(a) or odd(b)) then d:=1
  else
  begin
  repeat
  d:=b mod a;
  b:=a;
  a:=d;
  until d=0;
  d:=b;
  end;
 end;

begin   (* main begin  *)
   clrscr;
   write('ENTER HOW MANY NUMBERS YOU WANT..?');readln(n);
   writeln('ENTER ',n,' NUMBERS BY SPACE...');
   for i:=1 to n do read(aa[i]);

   for i:=1 to (n-1) do    (* sorting  *)
    for j:=(i+1) to n do
    begin
     if aa[i]>aa[j] then
                  begin
                  c:=aa[i];
                  aa[i]:=aa[j];
                  aa[j]:=c;
                  end;
    end;

   l:=aa[1];g:=aa[1];  (*  lcm process  *)
   for i:=2 to n do
   begin
    x:=aa[i];
    if l>x then
              begin
              c:=x;
              x:=l;
              l:=c;
              end;
    lcm(l,x,l1);
     l:=l1;
   end;

    y:=aa[i];
    if g<y then
              begin
              c:=g;
              g:=y;
              y:=c;
              end;
    gcd(g,y,g1);
    g:=g1;
   writeln;
   writeln('LCM IS ',l);
   writeln;
   writeln('GCD IS ',g);
end.
