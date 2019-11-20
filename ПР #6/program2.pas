var str :string;
var i, count:integer;

begin
  writeln('Write your string to find count of ',#39 , 'w' , #39' in her');
  readln(str);
  for i := 1 to Length(str) do begin
    if str[i] = 'w' then count := count + 1;
  end;
  writeln('Count of symbol ', #39, 'w' ,#39, ' = ', count);
end.
