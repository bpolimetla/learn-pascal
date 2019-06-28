program bool;
uses crt;
var
 a,b : array [1..25] of integer;
 c,c1,c2,i,k,f,f2,flag,n,ro,an,xo,s :integer;
begin
 clrscr;
 write ('Enter No.of i/p digits');readln(n);
 for i:=1 to n do write('  ',char(65+i-1));
 writeln('  OR  AND  XOR');
 for i:=1 to n do
  begin
  a[i]:=0;b[i]:=0;
  end;
  for i:=1 to n do write(a[i]:3);
  write('   0   0   0');
  writeln;
 repeat     {**1**}
   flag:=0;
   c:=n;
   repeat   {**2**}
     if c=n then b[c]:=a[c]+1
            else b[c]:=b[c]+a[c];
     f2:=0;
     if b[c]=2 then
                begin
                k:=1;c1:=c;c2:=0;
                repeat    {**3**}
                  b[c1]:=0;
                  b[c-k]:=a[c-k]+1;
                  f:=b[c-k];
                  k:=k+1;c1:=c1-1;c2:=c2+1;f2:=1;
                until f=1;    {**3**}
                end;
    if f2=1 then c:=c-c2 else c:=c-1;
    until c=0;                {**2**}
    for i:=1 to n do write (b[i]:3);
    s:=0;
    for i:=1 to n do  if b[i]=1 then s:=s+1;
    if s=0 then ro:=0 else ro:=1;
    if s=n then an:=1 else an:=0;
    if (s mod 2) =0 then xo:=1 else xo:=0;
    write(ro:4,an:4,xo:4);
    for i:=1 to n do
     begin
      if b[i]=1 then flag:=flag+1;
      a[i]:=b[i];b[i]:=0;
      end;
     writeln;
    until flag=n;             {**1**}
    repeat
    until keypressed;
 end.