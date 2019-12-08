function factorial(n:integer):longint;
  var i,r:longint;
  begin
    r:=1;
    for i:= 2 to n do begin
      r:= r * i;
    end;
    factorial:= r;
  end;
  
function pow(x,pow_x:integer): longint;
var i,r:longint;
begin
  r:= 1;
  for i:=1 to pow_x do begin
    r := r * x;
  end;
  pow := r;
end;

var i,n: integer;
var y: real;

begin
  read(n);
  for i:=1 to n do begin
    y:=y+factorial(i)/pow(2,i);
  end;
  writeln(y);
end.