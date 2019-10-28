var i,number,pow,result_var : integer;
begin
  result_var := 1;
  writeln('Введите: число, показатель степени');
  read(number, pow);
  for i:= 1 to pow do 
  begin
    result_var := result_var * number;
  end;
  writeln(number, '^', pow, ' = ', result_var);
end.