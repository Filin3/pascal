const length_big = 5;
const length_small = 10;
var arr: array[0..length_big] of array[0..length_small] of integer;
var big_i, small_i, min:integer;
begin
  min := 45;
  for big_i := 0 to length_big do begin
    for small_i := 0 to length_small do begin
      arr[big_i][small_i] := random(35,45);
      if min > arr[big_i][small_i] then begin
        min := arr[big_i][small_i];
        writeln('found new min: ' , min);
      end;
      writeln('arr[', big_i, '][', small_i, '] = ', arr[big_i][small_i]);
    end;
  end;
  writeln('Min value: ',min);
end.