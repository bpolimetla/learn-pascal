program append;
var
 f:text;
 begin
  assign (f,'line.pas');
  rewrite (f);
  writeln(f,'original file');
  close(f);
  append(f);
  writeln(f,'append text');
  {$I-}
  reset (f);
  {$I+}
  if ioresult = 0 then write ('filesize in bytes   :',filesize(f))
  else writeln ('file not found');
end.