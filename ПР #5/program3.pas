const length = 50;
var arr: array[1..length] of array[1..length] of integer;
var small_i, big_i :integer;

begin
  arr[1][1] := 1;
  for big_i := 1 to length do begin
    for small_i := 1 to length do begin
      if (arr[big_i][small_i] = 1) then begin
        if (big_i = length) then break;
        arr[big_i+1][small_i+1] := 1;
      end 
      else begin
        arr[big_i][small_i] := 0;
      end;
    end;
  end;
  for big_i := 1 to length do begin
    for small_i := 1 to length do begin
      write(arr[big_i][small_i]);
    end;
    writeln('');
  end;  
end.