const length_big = 5;
const length_small = 10;
var arr: array[0..length_big] of array[0..length_small] of integer;
var small_i, big_i, number :integer;

begin
  number := -27;
  for big_i := 0 to length_big do begin
    for small_i := 0 to length_small do begin
      arr[big_i][small_i] := random(-27, 38);
      writeln('arr[', big_i, '][', small_i, '] = ', arr[big_i][small_i]);
      if (number < arr[big_i][small_i]) and (arr[big_i][small_i] mod 2 <> 0) then begin
        number := arr[big_i][small_i];
        writeln('Found new number: = ', number);
      end;
    end;
  end;
  writeln('Found number is: ', number);
end.