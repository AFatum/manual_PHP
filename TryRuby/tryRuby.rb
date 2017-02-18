=begin
Файл для изучения Ruvy
=end
"Tony".reverse  # возвращает строку наоборот
40.to_s.reverse # здесь мы сначала перевели число 40 в строку (используя .to_s),
                # а затем перевернули эту строку наоборот (используя .reverse)

# ---------------- конвертируем данные ------------------------
20.to_s         # конвертирование числа в строку, результат - "20"
"20".to_i       # конвертирование числа в строку, результат - 20
poem.lines.to_a # конвертирование строки в массив

# ---------------- работаем с массивами ------------------------
[12, 47, 35]          # создание числового массива
[12, 47, 35].max      # возвращаем максимальное число массива
ticket = [12, 47, 35] # помещаем массив в переменную
ticket.sort           # сортируем массив по-возраствнию, получим - [12, 35, 47]
ticket.sort!          # сортирует массив данных НАВСЕГДА, 
                      # т.е. заносим новое значение в переменную

# ---------------- работаем со строками ------------------------
# http://ruby-doc.org/core-2.4.0/String.html#method-i-delete
poem['toast'] = 'honeydew'  # изменение первого слова "toast" 
                            # в строке (переменной) poem на слово "honeydew"
poem.lines.to_a.reverse     # инвертирование строк переменной poem в массиве
                            # рассмотрим подробнее:
poem.lines                  # разделяет весь текст в переменной poem на отдельные строки
poem.lines.to_a             # помещает каждую строку текста poem в отдельный элемент массива
poem.lines.to_a.reverse     # меняет местами элементы массива
# метод .join приводит результат к обычной строке
poem.lines.to_a.reverse.join # получмм текст с перевернутыми строками
poem.include? "My hand"      # метод проверяет содержание строки "My hand" в тексте poem
poem.downcase               # весь текст в нижнем регистре
poem.upcase                 # весь текст в верхнем регистре
poem.delete "My hand"       # удаляем строку "My hand" из текста poem и возвращаем копию
poem.delete "My hand"!      # тоже самое, но изменения остаются в переменной poem
                            # удаляются полностью все указанные символы, вплоть до пробелов
"hello".delete "l","lo"        #=> "heo"
"hello".delete "lo"            #=> "he"
"hello".delete "aeiou", "^e"   #=> "hell"
"hello".delete "ej-m"          #=> "ho"
# ---------------- работаем с хэшами и символами ------------------------
# создание нового хэша, хэш - это что-то типо ассоциативного массива
books = {}
books = Hash.new
books = Hash[]
# символ -  это что-то типо константы, постоянного значения, что экономит память компьютера
# присвоим к созданному хэшу символы, обозначающие оценку книги
books["Gravity's Rainbow"] = :splendid
books["Oldman and sea"] = :quite_good
books["1845 ouwrell"] = :medicore
books["JL"] = :quite_not_good
# длина хэша, возвращает количество элементов
books.lenght
# вызов значение массива по ключу
books["Gravity's Rainbow"] #=> :splendid
# возврат ключей и значений хэша
books.keys
books.values
# создание нового пустого хэша
ratings = Hash.new(0)
# присваиваем каждому значению books, свой рейтинг из массива ratings
books.values.each { |rate| ratings[rate] += 1 }
# выполнение блока в фигурных скобках 5 раз
5.times { print "Odelay!" }
# ------------- работа с папками и файлами ---------------------------
# открытие папки
Dir.entries "/" # здесь мы открываем корневую папку
# Поиск файлов по названию, либо с определённым расширением
Dir["/*.txt"]
# чтение файла comics.txt
print File.read("/comics.txt")
# копируем файл comics.txt в папку /Home с помощью метода .cp
# и заносим хендлер в переменную FileUtils
FileUtils.cp('/comics.txt', '/Home/comics.txt')

