{const n = 10;
var i,sum: integer;
var char_arr: array[0..n] of char;

begin
  while i <= n do begin
    writeln(ord(char_arr[i]));
    read(char_arr[i]);
    writeln(i, ' ', char_arr[i]);
    if ord(char_arr[i]) > 0 then i := i + 1;
  end;
end.}

const n = 10;
var i,sum: integer;
var char_arr: array[1..n] of char;

begin
  for i:=1 to n do begin
    //writeln(i);
    readln(char_arr[i]);
    if char_arr[i] = 'z' then begin
      sum := sum + 1;
    end;
  end;
  writeln('Sum = ', sum);
end.
