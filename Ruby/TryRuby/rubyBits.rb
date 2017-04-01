# - плохой код и хороший код
# - пример плохого кода
if ! tweets.empty?
  puts "Timeline:"
  puts tweets
end

=begin
Здесь код является плохим, потому использовано if ! .
Если нам нужно использовать отрицательное условие, когда что-то неравно чему-то,
то лучше использовать условный оператор - unless 
=end
#- лучше писать пот так
unless tweets.empty?
  puts "Timeline:"
  puts tweets
end

#- импользование unless вместе с else
#- вместо этого,
unless tweets.empty?
  puts "Timeline:"
  puts tweets
else
  put "No tweets found - better follow some people"
end

#- нужно писать так:
if tweets.empty?
  put "No tweets found - better follow some people"
else
  puts "Timeline:"
  puts tweets
end

# - nil is false
#-
if attachment.file_path != nil
  attachment.post
end


#+ - здесь можно не сравнивать с нулем, т.к. если значение верно, оно вернет не false 
if attachment.file_path
  attachment.post
end

# - пустые значения, возвращают true
"" #=> пустая строка вернет true
0 #=> число ноль вернет true
[] #=> пустой массив также вернет true

# - поэтому вот так писать НЕ нужно
unless name.length
  warn "User name required"
end
# потому что даже если строка пустая, то всё равно условие будет всегда истинным
# потому что даже если строка пустая, то всё равно условие будет всегда истинным

# вместо такой конструкции,..
if password.lenght < 8
  fail "Password too short"
end
unless username
  fail "No user name set"
end
#.. лучше использовать однострочные if/unless
fail "Password too short" if password.lenght < 8
fail "No user name set" unless username

