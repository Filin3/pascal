var a,b: integer;

function factorial(n:integer):integer;
  var i,r:integer;
  begin
  r:=1;
    for i:=2 to n do begin
      r:= r*i;
    end;
    factorial := r;
  end;
begin
  writeln('Enter numbers a,b: ');
  read(a,b);
  writeln(factorial(a) - factorial(b));
end.  