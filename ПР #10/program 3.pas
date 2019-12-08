//github.com/filin3 & belomor.su
//uses crt;

type person = record
  name:string[255];
  phone:string[255];
end;

procedure createFile(name:string);
var txt: file of person;
begin
  writeln('clear');//clrscr;
  writeln('Created new file: ', name);
  assign(txt, './' + name);
  rewrite(txt);
  close(txt);
end;

procedure addToFile(filename:string);
const currectPhone = ['0'..'9'];
const currectName = ['а'..'я', 'А'..'Я', 'a'..'z', 'A'..'Z', ' '];
var txt: file of person;
var temp: file of person;
var person_var: person;
var nRead: person;
var i:integer;
var cancel:boolean;
begin
  if FileExists('./' + filename) then begin
    writeln('clear');//clrscr;
    writeln('Append in file. ', filename, #10, '--------------------', #10);
    while person_var.name = '' do begin
      write('Enter name: ');
      readln(person_var.name);
      for i:=1 to Length(person_var.name) do begin
        if person_var.name[i] in currectName = false then begin
          writeln('clear');//clrscr;
          writeln('Name can', #39,'t be ', #39, person_var.name, #39, #10, '--------------------', #10);
          person_var.name := '';
          break;
        end;
      end;
    end;
    writeln('clear');//clrscr;
    while person_var.phone = '' do begin
      write('Enter phone: ');
      readln(person_var.phone);
      for i:=1 to Length(person_var.phone) do begin
        if person_var.phone[i] in currectPhone = false then begin
          writeln('clear');//clrscr;
          writeln('Phone can', #39,'t be ', #39, person_var.phone, #39, #10, '--------------------', #10);
          person_var.phone := '';
          break;
        end;
      end;
    end;
    {write('Enter phone: ');
    readln(person_var.phone);}
    assign(txt, './' + filename);
    assign(temp, './TEMP_' + filename);
    reset(txt);
    rewrite(temp);
    while eof(txt) <> true do begin
      read(txt, nRead);
      write(temp, nRead);
    end;
    close(txt);
    close(temp);
    rewrite(txt);
    reset(temp);
    while eof(temp) <> true do begin
      read(temp, nRead);
      write(txt, nRead);
    end;
    write(txt, person_var);
    close(txt);
    close(temp);
    erase(temp);
    writeln('clear');//clrscr;
    writeln('File ', filename, ' was changed.');
  end else begin
    writeln('clear');//clrscr;
    writeln('File ', filename, ' is not exists');
  end;
end;

procedure readFile(filename:string);
var txt: file of person;
var nRead:person;
var line_counter:integer;
begin
  writeln('clear');//clrscr;
  if FileExists('./' + filename) then begin
    line_counter := 1;
    assign(txt, './' + filename);
    reset(txt);
    writeln('Read file ', filename,#10, '--------------------');
    while eof(txt) <> true do begin
      read(txt, nRead);
      writeln(line_counter, '. ', nRead.name, ': ', nRead.phone);
    end;
    close(txt);
  end else begin
    writeln('File ', filename, ' not exists');
  end;
end;

procedure removeFromFile(filename:string);
var line_str:string;
var line_number:integer;
var error_handler:integer;
begin
  readFile(filename);
  //writeln(#10, 'For remove select line number.');
  while (error_handler <> 0) or (line_number <> 0) do begin
    write('Enter line number: ');
    readln(line_str); 
    val(line_str, line_number, error_handler);
    if error_handler > 0 then begin
      writeln('clear');//clrscr;
      writeln('Not a number: ',  line_str, #10, '--------------------', #10);
    end;
  end;
end;

function readFileName():string;
const bad_symbols = ['\', '/', ':', '*', '?', '"', '<', '>', '|'];
var filename:string;
var i:integer;
begin
  writeln('clear');//clrscr;
  while filename = '' do begin
    write('Enter the name of work file: ');
    readln(filename);
    writeln('clear');//clrscr;
    if (LowerCase(filename) <> UpperCase(filename)) and (filename[1] <> '.') then begin
      for i:=1 to Length(filename) do begin
        if filename[i] in bad_symbols then begin
          writeln('File name can',#39,'t be ', #39, filename ,#39, #10, '--------------------', #10);
          filename := '';
          break;
        end;         
      end;
    end else begin
      writeln('File name can',#39,'t be ', #39, filename ,#39, #10, '--------------------', #10);
      filename := '';        
    end;
  end;
  writeln('File name: ', filename);
  readFileName:= filename;
end;

var filename:string;
var choice:char;
begin
  //writeln('Created by Filin:3', #10);
  filename := readFileName();
  while true do begin
    writeln('--------------------', #10, #10, '1. Create new file.', #10, '2. Append file.', #10, '3. Read file', #10, '4. Remove from file.', #10,'5. Change filename.',#10, '6. Delete file.',#10,'7. Exit.');
    readln(choice);
    case choice of
      '1': begin
        if FileExists('./' + filename) then begin
          writeln('clear');//clrscr;
          writeln('File ', filename ,' exists. Do you want rewrite? Y/N');
          readln(choice);
          choice :=  UpperCase(choice);
          if choice = 'Y' then begin
            createFile(filename);
          end else begin
            writeln('clear');//clrscr;
            writeln('File ', filename, ' not changed.');
          end;
        end else begin
          createFile(filename);
        end;
      end;
      '2': addToFile(filename);
      '3': readFile(filename);
      '4': removeFromFile(filename);
      '5': filename := readFileName();
      '6': begin
         writeln('clear');//clrscr;
         if FileExists('./' + filename) then begin
           writeln('Are you sure delete file ', #39, filename, #39,'? Y/N');
           readln(choice);
           choice := UpperCase(choice);
           if choice = 'Y' then begin
             deleteFile('./' + filename);
             writeln('clear');//clrscr;
             writeln('File: ', filename, ' has deleted.');         
           end else begin
             writeln('clear');//clrscr;
             writeln('File: ', filename, ' has not deleted.');
          end;
        end else begin
          writeln('File ', filename, ' not exists.');
        end;
      end;
      '7': break;
    else begin
      writeln('clear');//clrscr;
      end;
    end;
  end;
end.