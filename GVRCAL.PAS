Program cal(input,output);
var i,j,k,l,m,n,i1,j1,k1,l1,m1,n1:integer;
begin
write('Enter day : ');
readln(k1);
writeln;
write('Enter month : ');
read(j1);
writeln;
write('Enter year : ');
read(i1);
i:=1;
j:=0;
while i<i1 do begin
if(((i mod 4=0)and (i mod 100<>0))or (i mod 400 =0))then n:=366 else n:=365;
j:=j+n;
if j>700 then j:=j-700;
i:=i+1;
end;
if(((i mod 4=0)and (i mod 100<>0))or (i mod 400 =0))then m1:=29  else m1:=28;
m:=j+m1+k1;
case (j1) of
1:  k:=m-m1;
2:  k:=m+31-m1;
3:  k:=m+31;
4:  k:=m+62;
5:  k:=m+92;
6:  k:=m+123;
7:  k:=m+153;
8:  k:=m+184;
9:  k:=m+215;
10: k:=m+245;
11: k:=m+276;
12: k:=m+306; end;
l:=(k mod 7)+1;
 case l of
 3:write('Tue');
 4:write('Wed');
 5:write('Thu');
 6:write('Fri');
 0:write('Sat');
 1:write('Sun');
 2:write('Mon');end;
 writeln;
end.



