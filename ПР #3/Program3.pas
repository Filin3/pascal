var i,sum,max:integer;
begin
  write('Введите число: ');
  readln(max);
  for i:= 4 to max do
  begin
    if i mod 2 = 0 then
    begin
      sum := sum + 1;
      writeln(i);
    end;
  end;
  writeln('Sum = ', sum);
end.