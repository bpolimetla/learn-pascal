program crypt(input,output);
uses crt;
var
    s:string[10];
    i,k,n,l:integer;
    code:char;
begin
   clrscr;
   write('enter any string: ');
   readln(s);
   l:=length(s);
   for i:=1 to l do
   s[i]:=upcase(s[i]);
   write('enter choice (e-encoding & d-decoding): ');
   read(code);
   write('enter the number that you to decode/encode : ');
   read(n);
   n:=n mod 26;
   write('the coded string is : ');
   if code='e' then
   begin
     for i:=1 to l do
       begin
         k:=ord(s[i])+n;
         if k>90 then  k:=k mod 10+64;
         write(char(k));
      end;
    end
    else
     begin
       if code='d' then
                    begin

                      for i:=1 to l do
                      begin
                        k:=ord(s[i])-n;
                        if k<65 then k:=k+26;
                        write(char(k));
                      end;
                    end;
    end;
    end.
