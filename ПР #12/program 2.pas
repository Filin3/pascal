uses ZnAndMod2ZeroLib, factorialLib;
//uses factorialLib;

var num:integer;

begin
  read(num);
  if ZnAndMod2Zero(num) then begin
    writeln(factorial(num));
  end else 
    begin
      writeln('Entered number is less than zero or mod 2 <> 0');
    end;
end.