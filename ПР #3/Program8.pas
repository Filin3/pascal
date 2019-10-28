var i,big_i,sec,count:integer;
var check: boolean;

function pow(x,pow_x:integer): integer;
var i,r:integer;
begin
  r:= 1;
  for i:=1 to pow_x do begin
    r := r * x;
  end;
  pow := r;
end;

function divideSelf(number:integer): boolean;
var i,sum:integer;
begin
  for i:=1 to number-1 do begin
    if number mod i = 0 then sum := sum + i;
    //writeln('Mod: ', number mod i, ' Num: ', number, ' Sum: ', sum, ' i: ', i);
    //if number < sum then break;
  end;
  if number = sum then begin
      divideSelf := true;
    end
    else begin
      divideSelf := false;
    end;
end;

begin
  while count <= 5 do begin
    big_i := big_i + 1;
    for i:= 2 to big_i-1 do begin
      if (big_i mod i = 0) then check := false;
    end;
    sec := pow(2, big_i - 1) * (pow(2, big_i) - 1);
    if (check = true) and (divideSelf(sec) = false) then count := count + 1;
    if (check = true) and (divideSelf(sec) = true) then begin
      writeln(sec);
      count := count + 1;
    end;
    check := true;
  end;
end.

{var count,i,num,sum:integer;
begin
  num := 1;
  while count <=5 do begin
    for i:=1 to num-1 do begin
      if num mod i = 0 then sum := sum + i;
    end;
    if (num = sum) then begin
      count := count + 1;
      writeln(num);
    end;
    sum := 0;
    num := num + 1;
  end;
end.}
