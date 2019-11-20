const length_big = 2;
const length_small = 3;
var arr: array[0..length_big] of array[0..length_small] of integer;
var big_i, small_i, count:integer;

begin
  for big_i := 0 to length_big do begin
    for small_i := 0 to length_small do begin
      write('arr[', big_i, '][', small_i ,'] = ');
      read(arr[big_i][small_i]);
    end;
  end;
  for big_i := 0 to length_big do begin
    count := 0;
    for small_i := 0 to length_small do begin
      if arr[big_i][small_i] > 0 then count := count + 1;
    end;
    writeln('[', big_i ,'] plus count = ', count);
  end;
end.