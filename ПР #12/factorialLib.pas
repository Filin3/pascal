unit factorialLib;
interface
  var factorialNum:integer;
  function factorial(num:integer):integer;

implementation
  function factorial(num:integer):integer;
  var i,r:integer;
  begin
    r:=1;
    for i:=1 to num do begin
      r := i*r;
    end;
    factorial:= r;
  end;

begin
end.