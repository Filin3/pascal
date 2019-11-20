var arr: array[0..9] of integer;
var i,c,sum:integer;

begin
  read(c);
  while i<=9 do begin
    read(arr[i]);
    if arr[i] <= c then begin
      sum := sum + arr[i];
      i := i + 1;
    end 
    else begin
      writeln(arr[i], ' больше ', c);
    end;
  end;
  writeln(sum/10);
end.