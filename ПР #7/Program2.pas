var al: set of char; //= ['a'..'z','а'..'я'];
var m: set of char;// = [];
var str:string;
var count,i: integer;

begin
al := ['a'..'z','а'..'я'];
m := [];
  writeln('Write string.');
  read(str);
  str := LowerCase(str);
  for i:=1 to Length(str) do begin
    if ((str[i] in m) <> true) and (str[i] in al) then begin
      Include(m, str[i]);
      count := count + 1;
    end;
  end;
  writeln(count);
end.