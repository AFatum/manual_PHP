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
