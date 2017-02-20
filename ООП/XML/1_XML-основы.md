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

Ниже приведен пример обычного xml-документа:

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

**Парсер** - считывает xml-документ и проверяем на синтаксические ошибки.
**Валидатор** - проверяет на соответствие всех данных в документе, согласно xml-схеме.
Ниже рассмотрены инструменты PHP, которые позволяют читать/изменять xml-документы.

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

Пример использование SAX-парсера, для внесения данных из вышеуказанного xml-документа, в следующую html-таблицу.
Ф-ции считывание данных из XML-документа:

```php
<?php 
  header( "Content-Type: text/html;charset=utf-8"); 
  // Создание парсера 
  $sax = xml_parser_create('utf-8');
  // Функция обработчик начальных тегов 
  // создаём новую ячейку, если xml-тег не "CATALOG" и не "BOOK"
  function onStart($parser, $tag, $att) {
    if($tag != "CATALOG" and $tag != "BOOK")
      echo "<td>";
    // создаём новую строку (рядок), если xml-тег - "BOOK"
    if($tag == "BOOK")
      echo "<tr>";
  }
  // Функция обработчик закрывающих тегов
  // аналогично, закрываем html-теги в соответствии с xml-тегами
  function onEnd($parser, $tag) {
    if($tag != "CATALOG" and $tag != "BOOK")
      echo "</td>";
    if($tag == "BOOK")
      echo "</tr>";
  }
  // Функция обработчик текстового содержимого 
  function onTxt($parser, $txt) { echo $txt; }
  // Назначение обработчиков начальных и конечных тегов
  xml_set_element_handler($sax, "onStart", "onEnd");
  // Назначение обработчика текстового содержимого
  xml_set_character_data_handler($sax, "onTxt");
?>
```
Считываение данных в html-таблицу

```html
<html>
  <head>
    <title>Каталог</title>
  </head>

  <body>
    <h1>Каталог книг</h1>
    <table border="1" width="100%">
      <tr>
        <th>Автор</th>
        <th>Название</th>
        <th>Год издания</th>
        <th>Цена, руб</th>
      </tr>
      <?php
        //Парсинг 
        <!-- Сюда вставляются данные из XML-документа -->
        xml_parse($sax, file_get_contents('catalog.xml'));
      ?>
    </table>
  </body>
</html>
```
