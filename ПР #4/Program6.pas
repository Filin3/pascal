const n = 10;
var arr: array[1..n] of integer;
var big_i, i,conteiner:integer;

begin
  for i:=1 to n do begin
    arr[i] := random(-314, 314);
    write(arr[i], ', ');
  end;
  for big_i := 1 to n do begin
    for i:= 1 to n-1 do begin
      if arr[i] < arr[i+1] then begin
        conteiner := arr[i];
        arr[i] := arr[i+1];
        arr[i+1] := conteiner;
      end;
    end;
   end;
  writeln('');
  for i:=1 to n do begin
    write(arr[i], ', ');
  end;
  writeln('');
  for i:=n downto 1 do begin
    write(arr[i], ', ');
  end;
end.
