var x,y,i1,i2:integer;
begin
  writeln('Введите: x,y');
  read(x,y);
  for i1:=1 to y do 
  begin
    for i2:=1 to x do
    begin
      write('#');
    end;
    writeln('');
  end;
end.