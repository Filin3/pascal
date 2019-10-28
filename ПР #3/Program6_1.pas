var b1,b2,b3:integer;
begin
  for b1:= 1 to 11 do begin
    for b2:= 1 to 10 do begin
      for b3:= 1 to 8 do begin
        if (16*b1+17*b2+21*b3=185) then writeln('16 кг: ', b1, #10, '17 кг: ', b2, #10 ,'21 кг: ', b3, #10);
      end;
    end;
  end;
end.