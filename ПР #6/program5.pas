var str :string;
var i :integer;

begin
  write('Write string: ');
  read(str);
  
  for i := 1 to Length(str) do begin
    if str[i] = LowerCase(str[i]) then begin
      str[i] := UpperCase(str[i]);
    end 
    else if str[i] = UpperCase(str[i]) then begin
      str[i] := LowerCase(str[i]);      
    end;      
  end;
  writeln(str);
end.