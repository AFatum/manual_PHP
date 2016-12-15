<a name="Up"></a>

## Дата, время
 + [time() — Возвращает текущую метку времени Unix](#Time);
 + [date() — Форматирует вывод системной даты/времени](#Date);
 + [strtotime() — Преобразует текстовое представление даты на английском языке в метку времени Unix](#strtotime);
 + [date_default_timezone_set() — Устанавливает временную зону по умолчанию для всех функций даты/времени в скрипте](#date_default);
 + [strftime() — Форматирует текущую дату/время с учетом текущих настроек локали](#strftime)
 + [strptime() — Разбирает строку даты/времени сгенерированную функцией strftime()](#strptime);

## Куки, кэши и буферизация
 + [КУКИ](#cookie);
 + [header - ХЕДЕРЫ](#header);
 + [БУФЕРИЗАЦИЯ](#ob);

## Массивы и mysqli
 + [Работа с массивами](#array);
 + [array_key_exists() — Проверяет, присутствует ли в массиве указанный ключ или индекс](#exists);
 + [array_shift() — Извлекает первый элемент массива](#shift);
 + [array_unshift() — Добавляет один или несколько элементов в начало массива](#unshift);
 + [count() — Подсчитывает количество элементов массива или что-то в объекте](#count)
 + [list() — Присваивает переменным из списка значения подобно массиву](#list);
 + [key() - Выбирает ключ из массива, и др.](#key);
 + [compact() — Создает массив, содержащий названия переменных и их значения](#compact);
 + [extract() — Импортирует переменные из массива в текущую таблицу символов](#extract);

***
### <a name="Time"></a> time() — Возвращает текущую метку времени Unix  
[Наверх](#Up) | [Manual](http://php.net/manual/ru/function.time.php)

```php
<?php 
time();
// выведет текущую дату ?>
```

```php
<?php 
$nextWeek = time() + (7 * 24 * 60 * 60);
// метка через неделю ?>
```
***
### <a name="Date"></a> date() - Форматирует вывод системной даты/времени  
[Наверх](#Up) | [Manual](http://php.net/manual/ru/function.date.php)

```php
<?php string date ( string $format [, int $timestamp = time() ] ) ?>
```

#### Примеры:

```php
<?php 
$today = date("m.d.Y");
// 03.10.2001 ?>
```

```php
<?php 
$today = date("m.d.Y H:i:s");
// 03.10.2001 17:16:18 ?>
```

```php
<?php 
$today = date("m.d.y");
// 03.10.01 ?>
```

```php
<?php 
$today = date("F j, Y, g:i a");
// March 10, 2001, 5:16 pm ?>
```

```php
<?php 
$today = date("j, n, Y");
// 10, 3, 2001 ?>
```

```php
<?php 
$today = date("Ymd");
// 20010310 ?>
```

```php
<?php 
$today = date('h-i-s, j-m-y, it is w Day');
// 05-16-18, 10-03-01, 1631 1618 ?>
```
***

### <a name="strtotime"></a> strtotime() — Преобразует текстовое представление даты на английском языке в метку времени Unix
[Наверх](#Up) | [Manual](http://php.net/manual/ru/function.strtotime.php)

```php
<?php 
int strtotime ( string $time [, int $now = time() ] )
?>
```

#### Примеры:

```php
<?php 
strtotime("now");
// сейчас ?>
```

```php
<?php 
strtotime("10 September 2000");
// определёная дата ?>
```

```php
<?php 
strtotime("+1 day");
// +1 день ?>
```

```php
<?php 
strtotime("+1 week");
// +1 неделя ?>
```

```php
<?php 
strtotime("+1 week 2 days 4 hours 2 seconds");
// +1 какой-то промежуток времени ?>
```

```php
<?php 
strtotime("next Thursday");
// следующий вторник (или любой другой день неделе) ?>
```

```php
<?php 
strtotime("last Monday");
// последний понедельник (или любой другой день неделе) ?>
```

```php
<?php 
strtotime("11-12-10");
// вернет Unix точку за дату: 12 октября 2011 года, год-день-месяц ?>
```

```php
<?php 
strtotime("11/12/10");
// вернет Unix точку за дату: 11 декабря 2010 года, день/месяц/год ?>
```

***
### <a name="date_default"></a> date_default_timezone_set() — Устанавливает временную зону по умолчанию для всех функций даты/времени в скрипте  
[Наверх](#Up) | [Manual](http://php.net/manual/ru/function.date-default-timezone-set.php)

```php
<?php 
bool date_default_timezone_set ( string $timezone_identifier )
?>
```

#### Примеры:

```php
<?php 
date_default_timezone_set('Europe/Kiev'); 
// устанавливаем киевское время

date_default_timezone_set('Europe/Zaporozhye');
// устанавливаем киевское время

date_default_timezone_set('Europe/Moscow');
// устанавливаем московсое время

date_default_timezone_set('Europe/Rome');
// и т.д.

date_default_timezone_set('Europe/Paris');

date_default_timezone_set('Europe/Madrid');

date_default_timezone_set('Europe/Berlin');

date_default_timezone_set('Europe/London');

date_default_timezone_set('Europe/Amsterdam');

date_default_timezone_set('Europe/Brussels');

date_default_timezone_set('Asia/Vladivostok');

date_default_timezone_set('Asia/Yakutsk');

date_default_timezone_set('Asia/Tokyo');

date_default_timezone_set('Asia/Almaty');

date_default_timezone_set('America/New_York');

date_default_timezone_set('America/New_York');

date_default_timezone_set('America/Los_Angeles');

date_default_timezone_set('America/Argentina/Buenos_Aires');
?>
```

***
### <a name="strftime"></a> strftime() — Форматирует текущую дату/время с учетом текущих настроек локали  
[Наверх](#Up) | [Manual](http://php.net/manual/ru/function.strftime.php)

```php
<?php 
string strftime ( string $format [, int $timestamp = time() ] )
?>
```

#### Примеры:

```php
<?php 
strftime('%H');
// вывод текущего времени, часы в 24-часовом формате ?>
```

```php
<?php 
strftime('%d');
// вывод текущего дня в месяце ?>
```

```php
<?php 
strftime('%B');
// вывод текущего месяца словом, строкой ?>
```

```php
<?php 
strftime('%Y');
// вывод текущего года ?>
```

```php
<?php 
$strftimeFormats = array(
  'A' => 'Полное название дня',
  'B' => 'Полное имя месяца, в зависимости от локали',
  'C' => 'Двухзначный номер столетия (год, деленный на 100, усеченный до целого)',
  'D' => 'Тоже что и "%m/%d/%y"',
  'E' => '',
  'F' => 'Тоже что и "%Y-%m-%d"',
  'G' => 'Четырехзначная версия %g',
  'H' => 'Двухзначный номер часа в 24-часовом формате',
  'I' => 'Двухзначный номер часа в 12-часовом формате',
  'J' => '',
  'K' => '',
  'L' => '',
  'M' => 'Двухзначный номер минуты',
  'N' => '',
  'O' => '',
  'P' => '"am" или "pm" в зависимости от текущего времени, в нижнем регистре',
  'Q' => '',
  'R' => 'Тоже что и "%H:%M"',
  'S' => 'Двухзначный номер секунды',
  'T' => 'Тоже что и "%H:%M:%S"',
  'U' => 'Номер недели указанного года, начиная с первого воскресенья в качестве первой недели',
  'V' => 'Порядковый номер недели в указанном году в соответствии со стандартом ISO-8601:1988, счет начинается с той недели, которая содержит минимум 4 дня, неделя начинается с понедельника',
  'W' => 'Номер недели указанного года, начиная с первого понедельника в качестве первой недели',
  'X' => 'Предпочитаемое отображение времени в зависимости от локали, без даты',
  'Y' => 'Четырехзначный номер года',
  'Z' => 'Смещение временной зоны/аббревиатура, НЕ выдаваемая %z (зависит от операционной системы)',
  'a' => 'Сокращенное название дня недели',
  'b' => 'Сокращенное название месяца в зависимости от локали',
  'c' => 'Предпочитаемое отображение даты и времени в зависимости от локали',
  'd' => 'Двухзначный номер дня месяца (с ведущими нулями)',
  'e' => 'День месяца, с ведущим пробелом, если он состоит из одной цифры',
  'f' => '',
  'g' => 'Двухзначный номер года в соответствии со стандартом ISO-8601:1988 (см. %V)',
  'h' => 'Сокращенное название месяца в зависимости от локали (псевдоним %b)',
  'i' => '',
  'j' => 'Номер дня в году, 3 цифры с ведущими нулями',
  'k' => 'Час в 24-часовом формате, с ведущим пробелом перед одиночной цифрой',
  'l' => 'Номер часа в 12-часовом формате, с ведущим пробелом, если он состоит из одной цифры',
  'm' => 'Двухзначный номер месяца',
  'n' => 'Символ новой строки ("\n")',
  'o' => '',
  'p' => '"AM" или "PM" в зависимости от указанного времени, в верхнем регистре',
  'q' => '',
  'r' => 'Тоже что и "%I:%M:%S %p"',
  's' => 'Временная метка Эпохи Unix',
  't' => 'Символ табуляции ("\t")',
  'u' => 'Номер дня недели в соответствии со стандартом ISO-8601',
  'v' => '',
  'w' => 'Номер дня недели',
  'x' => 'Предпочитаемое отображение даты в зависимости от локали, без времени',
  'y' => 'Двухзначный номер года',
  'z' => 'Смещение временной зоны относительно UTC или аббревиатура (зависит от операционной системы)',
  '%' => 'Символ процента ("%")',
);
// все форматы ?>
```

***
### <a name="strptime"></a> strptime() — Разбирает строку даты/времени сгенерированную функцией strftime()
[Наверх](#Up) | [Manual](http://php.net/manual/ru/function.strptime.php)

```php
<?php 
array strptime ( string $date , string $format )
?>
```

#### Примеры:

```php
<?php 
$format = '%d/%m/%Y %H:%M:%S';
$strf = strftime($format);
/* Результатом вывода будет:
  Array
  (
      [tm_sec] => 19
      [tm_min] => 54
      [tm_hour] => 15
      [tm_mday] => 3
      [tm_mon] => 9
      [tm_year] => 104
      [tm_wday] => 0
      [tm_yday] => 276
      [unparsed] =>
  )
*/ ?>
```

***

### <a name="cookie"></a> setcookie() — Посылает cookie  
[Наверх](#Up) | [Manual](http://php.net/manual/ru/function.setcookie.php)

```php
<?php bool setcookie ( string $name [, string $value = "" [, int $expire = 0 [, string $path = "" [, string $domain = "" [, bool $secure = false [, bool $httponly = false ]]]]]] ) ?>
```

#### Примеры:

```php
<?php 
setcookie("TestCookie", $value);
setcookie("TestCookie", $value, time()+3600);
setcookie("TestCookie", $value, 0x7FFFFFFF);
// setcookie — Посылает cookie ?>
```

```php
<?php
// установление куков на определенное количество дней, с помощью strtotime(): 
setcookie("TestCookie", $value, strtotime('+30 days'));
?>
```

```php
<?php
// установление куков на определенное количество дней, с помощью strtotime(): 
setcookie("TestCookie", $value, strtotime('+30 days'));
?>
```

```php
<?php
setcookie ("TestCookie", "", time() - 3600);
setcookie ("TestCookie", "", time() - 3600, "/~rasmus/", "example.com", 1);
// удаление кук, установка даты истечения срока действия на час назад ?>
```

```php
<?php 
// массивы в куках:
setcookie("cookie[three]", "cookiethree");
setcookie("cookie[two]", "cookietwo");
setcookie("cookie[one]", "cookieone");
?>
```

```php
<?php 
// ЗАЩИЩЁННЫЕ куки, для передачи только по http протоколу:
setcookie('TestCookie', $valueNotJavaScript, strtotime('+30 days'), '/demos/cookie', $_SERVER['HTTP_HOST'], false, true);
setcookie('TestCookie', $valueNotJavaScript, strtotime('+30 days'), '/', $_SERVER['HTTP_HOST'], false, true);
?>
```

```php
<?php 
// Передача куков только по защищённому соединению, через https протокол:
setcookie("TestCookie", $value, strtotime('+1 hour'), "/", $_SERVER['HTTP_HOST'], TRUE);
?>
```
***

### <a name="header"></a> header() — Отправка HTTP заголовка
[Наверх](#Up) | [Manual](http://php.net/manual/ru/function.header.php)

```php
<?php 
void header ( string $string [, bool $replace = true [, int $http_response_code ]] )?>
```

#### Примеры:

```php
<?php
// перенаправление на страницу www.example.com:
header("Location: http://www.example.com/");
?>
```

```php
<?php
// перенаправление страницы на саму себя
header("Location: " . $_SERVER['PHP_SELF']);
?>
```

```php
<?php
// перенаправление страницы на саму себя c REQUEST параметрами, get и др...
header("Location: ".$_SERVER['REQUEST_URI']);
?>
```

```php
<?php
// перенаправление на определенную страницу сайта, внутри хоста:
header("Location: http://".$_SERVER['HTTP_HOST'].'/test/index.php?id=gbook');
?>
```

```php
<?php
// перенаправление на страницу www.example.com с 301 статусом, для поисковиков
// указывает о ПОСТОЯННОМ перемещении страницы:
header("Location: http://www.example.com/", true, 301);
?>
```

```php
<?php
// обновление страницы
header("Refresh: 3");  // обновить страницу через три секунды
header("Refresh: 3; url=http://site.ru"); // перенаправление на страницу через три секунды
?>
```

```php
<?php
// обновление страницы
header("Refresh: 3");  // обновить страницу через три секунды
header("Refresh: 3; url=http://site.ru"); // перенаправление на страницу через три секунды
?>
```

```php
<?php
// установление тип контента
header("Content-type: text/html");			// отправка страницы html
header("Content-type: text/plain");			// отправка простого текстового файла
?>
```

```php
<?php
// установление тип контента и КОДИРОВКИ
header("Content-type: text/html; charset=utf-8");
?>
```

```php
<?php
// Передача определенного файла на загрузку и/или открытии в приложении ОС пользователя
header("Content-disposition: attachment; filename=\"mytext.txt\"");
?>
```

#### Управление кэшированием:

```php
<?php
// Правильные запрет кэширования:
header("Cache-Control: no-store; max-age=0");
?>
```

```php
<?php
// Правильные разрешение кэширования, например, кеширование странцы на час,.
// ..т.е. через 3600 секунд, страница будет перезапрошена из сервера
header("Cache-Control: max-age=3600");
?>
```

```php
<?php
// Правильный разрешение кэширование с конкретно заданной датой:
header("Expires: ".date("r"));
header("Expires: ".date("r", time()+3600));
?>
```
***

```php
<?php 
strtotime("+1 week 2 days 4 hours 2 seconds");
// +1 какой-то промежуток времени ?>
```

```php
<?php 
strtotime("next Thursday");
// следующий вторник (или любой другой день неделе) ?>
```

```php
<?php 
strtotime("last Monday");
// последний понедельник (или любой другой день неделе) ?>
```

```php
<?php 
strtotime("11-12-10");
// вернет Unix точку за дату: 12 октября 2011 года, год-день-месяц ?>
```

```php
<?php 
strtotime("11/12/10");
// вернет Unix точку за дату: 11 декабря 2010 года, день/месяц/год ?>
```

***

### <a name="ob"></a> БУФЕРИЗАЦИЯ  
[Наверх](#Up) | [Manual](http://php.net/manual/ru/function.ob-start.php)

```php
<?php 
bool ob_start ([ callable $output_callback = NULL [, int $chunk_size = 0 [, int $flags = PHP_OUTPUT_HANDLER_STDFLAGS ]]] )
?>
```

#### Примеры:

```php
<?php
// ob_start — Включение буферизации вывода. Автоматический вывод в конце скрипта
ob_start();
?>
```

```php
<?php
string ob_get_contents ( void )
// ob_get_contents — Возвращает содержимое буфера вывода
$out1 = ob_get_contents();
?>
```

```php
<?php
void ob_flush ( void )
// ob_flush — Сброс (отправка) буфера вывода. Срабатывает автоматом в конце скрипта
ob_flush();
?>
```

```php
<?php
bool ob_end_flush ( void )
// ob_end_flush — Эта функция отправит содержимое буфера вывода (если оно имеется) и отключит эту буферизацию вывода. 
ob_end_flush();
?>
```

```php
<?php
bool ob_end_flush ( void )
// ob_end_flush — Эта функция отправит содержимое буфера вывода (если оно имеется) и отключит эту буферизацию вывода. 
ob_end_flush();
?>
```

```php
<?php
void ob_clean ( void )
// ob_clean — Очищает (стирает) буфер вывода
ob_clean();
?>
```

```php
<?php
bool ob_end_clean ( void )
// ob_end_clean — Очищает (стирает) буфер вывода и отключает буферизацию вывода
ob_end_clean();
?>
```
***
[Массиы на Manual](http://php.net/manual/ru/ref.array.php)
### <a name="array"></a> array() — Создает массив
[Наверх](#Up) | [Manual](http://php.net/manual/ru/function.array.php)

```php
<?php 
array array ([ mixed $... ] )
// array — Создает массив
 ?>
```

#### Примеры:

```php
<?php 
// Создание многомерного массива
$fruits = array (
  "fruits"  => array("a" => "orange", "b" => "banana", "c" => "apple"),
  "numbers" => array(1, 2, 3, 4, 5, 6),
  "holes"   => array("first", 5 => "second", "third");
?>
```

```php
<?php 
// Создание многомерного массива
// Пример #2 Автоматическая индексация с помощью array()
$array = array(1, 1, 1, 1,  1, 8 => 1,  4 => 1, 19, 3 => 13);
?>
```

```php
<?php 
// Пример #3 array(), нумерация которого начинаяется с 1
$firstquarter = array(1 => 'January', 'February', 'March');
?>
```

```php
<?php 
// Коротки синтаксис создание массива
$a = [1, 2, 3, 4];
$a = ['a' => 'Авокадо', 'b'=>'Банан', 'c'=>'Во', 'd'=> 'Грейптфрукт'];
?>
```

***
### <a name="exists"></a> [array_key_exists() — Проверяет, присутствует ли в массиве указанный ключ или индекс  
[Наверх](#Up) | [Manual](http://php.net/manual/ru/function.array-key-exists.php)

```php
<?php bool array_key_exists ( mixed $key , array $array )?>
```

#### Примеры:

```php
// array_key_exists — Проверяет, присутствует ли в массиве указанный ключ или индекс
// Функция array_key_exists() возвращает TRUE, если в массиве присутствует указанный ключ key. Параметр key может быть любым значением, которое подходит для индекса массива.

array_key_exists('first', $search_array);
?>
```

***

### <a name="shift"></a> array_shift() — Извлекает первый элемент массива
[Наверх](#Up) | [Manual](http://php.net/manual/ru/function.array-shift.php)

```php
<?php 
mixed array_shift ( array &$array )
?>
```

#### Примеры:

```php
<?php 
// array_key_exists — Проверяет, присутствует ли в массиве указанный ключ или индекс
// Функция array_key_exists() возвращает TRUE, если в массиве присутствует указанный ключ key. Параметр key может быть любым значением, которое подходит для индекса массива.

array_key_exists('first', $search_array);
?>
```

***

### <a name="unshift"></a> array_unshift() — Добавляет один или несколько элементов в начало массива
[Наверх](#Up) | [Manual](http://php.net/manual/ru/function.array-unshift.php)

```php
<?php 
int array_unshift ( array &$array , mixed $value1 [, mixed $... ] )
?>
```

#### Примеры:

```php
<?php 
// array_unshift — Добавляет один или несколько элементов в начало массива.
// Обратная от функции array_shift($stack);

array_unshift($queue, "apple", "raspberry");
?>
```

***

### <a name="count"></a> count() — Подсчитывает количество элементов массива или что-то в объекте
[Наверх](#Up) | [Manual](http://php.net/manual/ru/function.count.php)

```php
<?php 
int count ( mixed $array_or_countable [, int $mode = COUNT_NORMAL ] )
?>
```

#### Примеры:

```php
<?php 
// count — Подсчитывает количество элементов массива или что-то в объекте
count($array);
?>
```

***

### <a name="list"></a> list() — Присваивает переменным из списка значения подобно массиву
[Наверх](#Up) | [Manual](http://php.net/manual/ru/function.list.php)

```php
<?php 
array list ( mixed $var1 [, mixed $... ] )
?>
```

#### Примеры:

```php
<?php 
// list — Присваивает переменным из списка значения подобно массиву, используется для того, чтобы присвоить списку переменных значения за одну операцию.

$info = array('кофе', 'коричневый', 'кофеин');
list($drink, $color, $power) = $info;
?>
```

***

### <a name="key"></a> key() — Выбирает ключ из массива
[Наверх](#Up) | [Manual](http://php.net/manual/ru/function.key.php)

```php
<?php 
mixed key ( array &$array )
?>
```

#### Примеры:

```php
<?php 
mixed key ( array &$array )
// key — Выбирает ключ из массива (применяется в циклах)
key($array);

// next — Передвигает внутренний указатель массива на одну позицию вперёд
// Возвращает значение элемента массива, находящегося на позиции, следующей за позицией внутренний указателя или FALSE, если достигнут конец массива.
mixed next ( array &$array )

// current — Возвращает текущий элемент массива
// Функция current() просто возвращает значение элемента массива, на который указывает его внутренний указатель. Она не перемещает указатель куда бы то ни было. Если внутренний указатель находится за пределами списка элементов или массив пуст, current() возвращает FALSE.
mixed current ( array &$array )

// prev — Передвигает внутренний указатель массива на одну позицию назад. Возвращает значение массива, на которое ранее указывал внутренний указатель массива, или FALSE если больше элементов нет.
mixed prev ( array &$array )

// reset — Устанавливает внутренний указатель массива на его первый элемент. Возвращает значение первого элемента массива, или FALSE, если массив пуст.
mixed reset ( array &$array )

// end — Устанавливает внутренний указатель массива на его последний элемент. Возвращает значение последнего элемента или FALSE для пустого массива. 
mixed end ( array &$array )

// each — Возвращает текущую пару ключ/значение из массива и смещает его указатель
array each ( array &$array )
?>
```

##### Ещё пример:

```php
<?php 
$transport = array('foot', 'bike', 'car', 'plane');
$mode = current($transport); // $mode = 'foot';
$mode = next($transport);    // $mode = 'bike';
$mode = next($transport);    // $mode = 'car';
$mode = prev($transport);    // $mode = 'bike';
$mode = end($transport);     // $mode = 'plane';
$mode = reset($transport);   // $mode = 'foot';
$mode = each($transport);    // $mode = array(0 => 'foot');
?>
```

***
### <a name="compact"></a> compact() — Создает массив, содержащий названия переменных и их значения
[Наверх](#Up) | [Manual](http://php.net/manual/ru/function.compact.php)

```php
<?php 
array compact ( mixed $varname1 [, mixed $... ] )
?>
```

#### Примеры:

```php
<?php
// compact — Создает массив, содержащий названия переменных и их значения
	$a = "тест1";
	$b = "тест2";
	$c = "тест3";
	$d = "тест4";
	$array = compact('a', 'b', 'c', 'd');
?>
```

***
### <a name="extract"></a> extract() — Импортирует переменные из массива в текущую таблицу символов
[Наверх](#Up) | [Manual](http://php.net/manual/ru/function.extract.php)

```php
<?php 
int extract ( array &$array [, int $flags = EXTR_OVERWRITE [, string $prefix = NULL ]] )
?>
```

#### Примеры:

```php
// extract — Импортирует переменные из массива в текущую таблицу символов
/* Параметры флагов:

EXTR_OVERWRITE
    Если переменная с таким именем существует, она будет перезаписана. 
EXTR_SKIP
    Если переменная с таким именем существует, ее текущее значение не будет перезаписано. 
EXTR_PREFIX_SAME
    Если переменная с таким именем существует, к её имени будет добавлен префикс, определённый параметром prefix. 
EXTR_PREFIX_ALL
    Добавить префикс prefix ко всем именам переменных. 
EXTR_PREFIX_INVALID
    Добавить префикс prefix только к некорректным/числовым именам переменных. 
EXTR_IF_EXISTS
    Перезаписать только переменные, уже имеющиеся в текущей таблице символов, в противном случае не делать ничего. Данная возможность полезна для определения списка приемлемых переменных и для извлечения только тех переменных, которые вы уже определили из массивов типа $_REQUEST, например. 
EXTR_PREFIX_IF_EXISTS
    Создать только префикс-версии переменных, если версия данной переменной без префикса уже существует в текущей символьной таблице. 
EXTR_REFS
    Извлечь переменные как ссылки. Это означает, что значения таких переменных будут всё ещё ссылаться на значения массива array. Вы можете использовать этот флаг отдельно или комбинировать его с другими значениями flags с помощью побитового 'или'. */
	
	/* Предположим, что $var_array - это массив, полученный в результате
	   wddx_deserialize */

	$size = "large";
	$var_array = array("color" => "blue",
					   "size"  => "medium",
					   "shape" => "sphere");
	extract($var_array, EXTR_PREFIX_SAME, "wddx");

	echo "$color, $size, $shape, $wddx_size\n";
	
	// удаление повторяющихся элемнтов массива
	array array_unique ( array $array [, int $sort_flags = SORT_STRING ] )
	// array_unique — Убирает повторяющиеся значения из массива
    
	array_unique($array);
?>
```