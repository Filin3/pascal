var year:integer;
var color_arr: array[0..11] of string = ('Крыса', 'Бык', 'Тигр', 'Кролик', 'Дракон', 'Змея', 'Лошадь', 'Коза', 'Обезьяна', 'Петух', 'Собака', 'Свинья');
var animal_arr: array[0..4] of string = ('Белый', 'Черный', 'Синий', 'Красный', 'Желтый');
//var color_arr: array[0..4] of string = ('зелёный', 'красный', 'жёлтый', 'белый', 'чёрный');
//var animal_arr: array[0..11] of string = ('крысы', 'коровы', 'тигра', 'кота', 'дракона', 'змеи', 'лошади', 'овцы', 'обезьяны', 'петуха', 'собаки', 'свиньи');
begin
  write('Введите год: ');
  read(year);
  if (year mod 60) mod 5 <= 1 then begin
    write(year, ' - год ', color_arr[1], ' ' ,animal_arr[(year-4) mod 12]);
  end
  {else begin
    if (year mod 60) div 5 >= 6 then begin
      write(year, ' - год ', color_arr[(((year-4) mod 60) div 5) mod 5], ' ' ,animal_arr[(year-4) mod 12]);
      writeln(' if 2' ,(((year-4) mod 60) div 5) mod 5);
    end} 
    else begin
      write(year, ' - год ', color_arr[((year-4) mod 60) mod 5], ' ' ,animal_arr[(year-4) mod 12]);
      writeln(' else ', ((year-4) mod 60) mod 5);
    end;
  //end; 
end.