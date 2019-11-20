var i,count,sum:integer;
var arr: array[0..9] of integer;

begin
  for i:=0 to 9 do begin
    arr[i] := random(-15, 10);
    if arr[i] < 0 then begin
     sum := sum + arr[i];
     count := count + 1;
    end;
  end;
  writeln('Sum = ', sum, #10, 'Count = ', count);
end.