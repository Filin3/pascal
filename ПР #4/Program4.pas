const n = 10;
var arr: array[1..n] of integer;
var i,count: integer;

begin
  for i := 1 to n do begin
    read(arr[i]);
    if arr[i] = 0 then begin
      count := count + 1;
    end;
  end;
  writeln(count);
end.