var i:integer;
var arr: array[0..9] of integer;

begin
  for i:=0 to 9 do begin
    arr[i] := random(-15, 10);
    write(arr[i], ', ');
  end;
end.