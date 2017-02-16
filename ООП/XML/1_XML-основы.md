<a name="Up"></a>

## Работа с классом SQLite3
[Manual](http://php.net/manual/ru/class.sqlite3.php)

 + [Пример обычного xml-файла](#example);
 + [Парсер - Simple XML(SAX)](#SAX);
 
 + [Открытие/закрытие БД](#openClose);
 + [Экранирование строки](#escape);
 + [INSERT-запросы](#insert);
 + [Отслеживание ошибок, и результат](#error);
 + [Подготовительные запросы](#prepare);


***
### <a name="example"></a> Пример обычного xml-файла
[Наверх](#Up) | [Manual](http://php.net/manual/ru/sqlite3.construct.php)

```html
<?xml version="1.0" encoding="utf-8" ?>
<catalog>
  <book>
    <author>Алекс Гомер</author>
    <title>XML и IE5</title>
    <pubyear>2000</pubyear>
    <price>200</price>
  </book>

  <book>
    <author>Алекс Хоумер</author>
    <title>Dimanic HTML</title>
    <pubyear>2004</pubyear>
    <price>120</price>
  </book>

  <book>
    <author>Алексей Валиков</author>
    <title>Технология XSLT</title>
    <pubyear>2006</pubyear>
    <price>150</price>
  </book>

  <book>
    <author>Стивен Холзнер</author>
    <title>XSLT</title>
    <pubyear>2005</pubyear>
    <price>170</price>
  </book>
</catalog>
```
***
### <a name="SAX"></a> Парсер - Simple XML(SAX)
[Наверх](#Up) | [Manual](http://www.saxproject.org)
```php
<?php
// Использование SAX

// Создание парсера
$sax = xml_parser_create("utf-8");

// Декларация функций обработки событий
function onStart($parser, $tag, $attributes){}
function onEnd($parser, $tag){}
function onText($parser, $text){}

// Регистрация функций как обработчиков событий
xml_set_element_handler($sax, "onStart", "onEnd");
xml_set_character_data_handler($sax, "onText");

// Запуск парсера
xml_parse($sax, "XML строка!");

// Обработка ошибок
echo xml_error_string( xml_get_error_code($sax) );
?>
```

