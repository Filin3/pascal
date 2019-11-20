var str :string;
var i, count: integer;

begin
  write('Write string: ');
  readln(str);
  str := ' ' + LowerCase(str) + ' ';
  for i := 2 to Length(str) do begin
    if (str[i-1] = ' ') and (str[i] = 'w') and (str[i+1] <> ' ') then count := count + 1;
  end;
  writeln('Count words: ', count);
end.