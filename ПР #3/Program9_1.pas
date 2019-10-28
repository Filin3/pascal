var year:integer;
var color_arr: array[0..4] of string = ('зелёной', 'красной', 'жёлтой', 'белой', 'чёрной');
var animal_arr: array[0..11] of string = ('крысы', 'коровы', 'тигра', 'кота', 'дракона', 'змеи', 'лошади', 'овцы', 'обезьяны', 'петуха', 'собаки', 'свиньи');
begin
  write('Enter year: ');
  readln(year);
  writeln(year ,' год: ',color_arr[(year - 4) mod 60 div 12], ' ', animal_arr[(year - 4) mod 12]);
end.