var str_word, str: string;
var i, word_length_count, word_count :integer;

begin
  write('Write string: ');
  readln(str);
  write('Write word: ');
  readln(str_word);
  
  str_word := LowerCase(str_word);
  str := ' ' + LowerCase(str) + ' ';
  
  word_length_count := 0;
  for i := 2 to Length(str) do begin
    if (word_length_count = Length(str_word)) or ((str[i] <> str_word[word_length_count + 1]) and (word_length_count <> 0)) then word_length_count := 0;
    if (str[i-word_length_count-1] = ' ') and (str[i] = str_word[word_length_count + 1]) then begin
      word_length_count := word_length_count + 1;
    end;
    if ((word_length_count = Length(str_word)) and (str[i+1] = ' ')) then begin
      word_count := word_count + 1;
      word_length_count := 0;
    end;
  end;
  writeln('Count words ',#39, str_word ,#39,' in string: ', word_count);
end.