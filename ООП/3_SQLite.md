<a name="Up"></a>

## Работа с классом SQLite3
[Manual](http://php.net/manual/ru/class.sqlite3.php)

 + [Создание БД](#newSQLite);
 + [Открытие/закрытие БД](#openClose);
 + [Экранирование строки](#escape);
 + [INSERT-запросы](#insert);
 + [Отслеживание ошибок, и результат](#error);
 + [Подготовительные запросы](#prepare);
 + [SELECT-запросы](#select);


***
### <a name="newSQLite"></a> Создание БД
[Наверх](#Up) | [Manual](http://php.net/manual/ru/sqlite3.construct.php)

```php
<?php
// Создаём или открываем базу данных test.db
$db = new SQLite3("test.db");
?>
```
***
### <a name="openClose"></a> Открытие/закрытие БД
[Наверх](#Up) | [Open](http://php.net/manual/ru/sqlite3.open.php) | [Close](http://php.net/manual/ru/sqlite3.close.php)


```php
<?php
// Открываем другую БД для работы
$db->open("another.db");
?>
```

```php
<?php
// Закрываем базу данных без удаление объекта
$db->close();
// Удаляем объект
unset($db);
?>
```
***
### <a name="escape"></a> Экранирование строки
[Наверх](#Up) | [Manual](http://php.net/manual/ru/sqlite3.escapestring.php)

```php
<?php
// Открываем другую БД для работы
$db->open("another.db");
?>
```

```php
<?php
// Закрываем базу данных без удаление объекта
$db->close();
// Удаляем объект
unset($db);
?>
```
***
### <a name="insert"></a> INSERT-запросы
[Наверх](#Up) | [Manual](http://php.net/manual/ru/sqlite3.exec.php)

```php
<?php
// Для запросов без выборки данных
$sql = "INSERT INTO users (name, age)
          VALUES ('$name', 25)";
// Возвращает значение булева типа
$result = $db->exec($sql);
?>
```
### <a name="error"></a> Отслеживание ошибок, и результат
[Наверх](#Up) | [changes](http://php.net/manual/ru/sqlite3.changes.php) | [lastErrorCode](http://php.net/manual/ru/sqlite3.lasterrorcode.php) | [lastErrorMsg](http://php.net/manual/ru/sqlite3.lasterrormsg.php)

```php
<?php
// Количество изменённых записей
echo $db->changes();

// Отслеживание ошибок
echo $db->lastErrorCode();
echo $db->lastErrorMsg();
?>
```
### <a name="prepare"></a> Подготовительные запросы
[Наверх](#Up) [Manual](http://php.net/manual/ru/sqlite3stmt.bindparam.php) 

```php
<?php
/// Подготовленне запросы stmt
$sql = "INSERT INTO users (name, age) VALUES (:name, :age)";
// готовим запрос
$stmt = $db->prepare($sql);
// Привязываем параметры
$stmt->bindParam(':name', $name);
$stmt->bindParam(':age', $age);
// Исполняем запрос
$result = $stmt->execute();
// Закрываем при необходимости
$stmt->close();
?>
```
### <a name="select"></a> SELECT-запросы
[Наверх](#Up) | [Manual](http://php.net/manual/ru/sqlite3result.fetcharray.php)

```php
<?php
/// ВЫБОРКА ДАННЫХ
$sql = "SELECT name, age, FROM users";

// В случае неудачи возвращаем false
$result = $db->querySingle($sql);
// В $result - значение первого поля первой записи

$result = $db->querySingle($sql, true);
// В $result - массив значений первой записи

// Стандартная обработка
$result = $db->query($sql);
// Обработка выборки
$row = $result->fetchArray(); //SQLITE3_BOTH
// Получаем ассоциативный массив
$row = $result->fetchArray(SQLITE3_ASSOC);
// Получаем индексированный массив
$row = $result->fetchArray(SQLITE3_NUM);
?>
```