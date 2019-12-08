//const symbols = ['a'..'z'];
const symbols = ['a', 'b', 'c', 'd', 'e', 'f'];
var arr: array[0..25] of integer;
var txt: file of char;
var symbol: char;
var i: integer;

begin
  assign(txt, './txt.txt');
  reset(txt);
  
  while eof(txt) <> true do begin
    read(txt, symbol);
    symbol := LowerCase(symbol);
    if symbol in symbols then begin
      arr[ord(symbol) - 97] := arr[ord(symbol) - 97] + 1;
    end;
  end;
  
  for i := 0 to 25 do begin
    if arr[i] <> 0 then begin
      writeln(chr(i + 97), ': ', arr[i]);
    end;
  end;
end.