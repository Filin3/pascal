var i1,i2,i3,find:integer; 
var ln:char;
begin
  ln := #10;
  read(find);
  while i1*21 < find do begin
    if ((i1+1)*21 >= find) then begin
    if (i1 = 0) then i1 := 1;
    break;
  end
  else begin
    i1 := i1 + 1;
  end;
  end;
  while i2*17 < find-i1*21 do begin
    if ((i2+1)*17 >= find-i1*21) then begin
    if (i2 = 0) then i2 := 1;
    break;
    end
    else begin
      i2 := i2 + 1;
    end;
    end;
  while i3*16 < find-(i1*21 + i2*17) do begin
    if ((i3+1)*16 >= find-(i1*21 + i2*17)) then begin
      if (i3 = 0) then i3 := 1;
      break;
      end
     else begin
        i3 := i3 + 1;
     end;
  end;
    writeln('21 кг: ', i1, ln, '17 кг: ', i2, ln, '16 кг: ', i3);
end.