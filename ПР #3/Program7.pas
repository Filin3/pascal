var i,num:integer;
begin
  read(num);
  for i:=1 to num do begin
    if num mod i = 0 then writeln(i);
  end;
end.