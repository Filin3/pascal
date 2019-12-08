var m: set of integer;//= [];
var num,i:integer;

begin
m:= [];
  writeln('Write number.');
  read(num);
  for i := 0 to Random(10,100) do begin
    Include(m, Random(0,100));
  end;
  writeln('m = ', m);
  if num in m then begin
    writeln(num, ' in m');
  end else begin
    writeln(num, ' not in m');
  end;
end.