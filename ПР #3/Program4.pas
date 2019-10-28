var x:real;
begin
  while x<Pi do begin
    writeln('x = ', x , ' y = ', cos(x)*tan(Pi*x));
    x:= x + 0.1;
  end; 
end.