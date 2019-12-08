const fileName = '1.res';
var resMain: file of integer;
var resTemp: file of integer;
var nRead: integer;

begin
  writeln('Befone: ');
  assign(resMain, './' + fileName);
  assign(resTemp, './RESTEMP.res');
  reset(resMain);
  rewrite(resTemp);
  while eof(resMain) <> true do begin
    read(resMain, nRead);
    write(resTemp, nRead);
    writeln(nRead);
  end;
  close(resMain);
  close(resTemp);
  
  rewrite(resMain);
  reset(resTemp);
  while eof(resTemp) <> true do begin
    read(resTemp, nRead);
    write(resMain, nRead);
  end;
  close(resTemp);
  reset(resTemp);
  while eof(resTemp) <> true do begin
    read(resTemp, nRead);
    write(resMain, nRead * 10);
  end;
  
  close(resMain);
  close(resTemp);
  
  Erase(resTemp);
 
  writeln('After: ');
  reset(resMain);
  while eof(resMain) <> true do begin
    read(resMain, nRead);
    writeln(nRead);
  end; 
end.