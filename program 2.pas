const full_file_name = './txt2.txt';
var txt: file of char;
var txt_new: file of char;
var symbol:char;
begin
  assign(txt, full_file_name);
  assign(txt_new, './TEMP_' + full_file_name);
  
  reset(txt);
  rewrite(txt_new);
  
  while eof(txt) <> true do begin
    read(txt, symbol);
    if symbol = '.' then begin
      write(txt_new, '.');
      write(txt_new, '.');
    end;
    write(txt_new, symbol);
  end;

  close(txt);
  close(txt_new);
  
  Erase(txt);
  Rename(txt_new, full_file_name);
end.