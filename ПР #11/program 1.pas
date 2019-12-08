const fileName = '1.res';
var res: file of integer;
var i,n:integer;
begin
  assign(res, './' + fileName);
  rewrite(res);
  readln(n);
  for i := 1 to n do begin
    write(res, i);
  end;
  close(res);
  
  assign(res, './'  + fileName);
  reset(res);
  while eof(res) <> true do begin
    read(res,n);
    writeln(n);
  end;
end.