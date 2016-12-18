<a name="Up"></a>

## mysqli
 + [mysqli_connect() — Устанавливает новое соединение с сервером MySQL](#mysqli_connect);
 + [Ошибки соединения](#connect_err);
    - [mysqli_connect_errno() - Возвращает код ошибки последней попытки соединения](#mysqli_connect_errno);
    - [mysqli_connect_error() - Возвращает описание последней ошибки подключения](#mysqli_connect_error);
 + [mysqli_errno() — Возвращает код ошибки последнего вызова функции](#mysqli_errno);
 + [mysqli_errno() — Возвращает код ошибки последнего вызова функции](#mysqli_errno);
 + [mysqli_real_escape_string() — Экранирует специальные символы в строках для использования в выражениях SQL](#mysqli_real_escape_string);
 + [mysqli_query() — Выполняет запрос к базе данных](#mysqli_query);
 + [mysqli_free_result() — Освобождает память занятую результатами запроса](#mysqli_free_result);
 + [mysqli_fetch_array() — Выбирает одну строку из результирующего набора и помещает ее в ассоциативный массив, обычный массив или в оба](#mysqli_fetch_array);
 + [mysqli_fetch_all() — Выбирает все строки из результирующего набора и помещает их в ассоциативный массив, обычный массив или в оба](#mysqli_fetch_all);

***
### <a name="mysqli_connect"></a> mysqli_connect() — Устанавливает новое соединение с сервером MySQL
[Наверх](#Up) | [Manual](http://ua2.php.net/manual/ru/mysqli.construct.php)

```php
<?php 
mysqli mysqli_connect ([ string $host = ini_get("mysqli.default_host") [, string $username = ini_get("mysqli.default_user") [, string $passwd = ini_get("mysqli.default_pw") [, string $dbname = "" [, int $port = ini_get("mysqli.default_port") [, string $socket = ini_get("mysqli.default_socket") ]]]]]] )
 ?>
```

#### Параметры:

 + **host** - Может быть именем хоста или IP адресом. Передача NULL или строки "localhost" этому параметру означает, что в качестве хоста будет использоваться локальная машина, на которой запущен скрипт. Если есть такая возможность, будут использоваться пайпы вместо протокола TCP/IP. Если перед именем хоста задать строку p:, то будет открыто постоянное соединение. Если соединение открыто из пула подключений, будет автоматически вызвана функция mysqli_change_user().
 + **username** - Имя пользователя MySQL.
 + **passwd** - Если не задан или равен NULL, MySQL сервер в первую очередь попытается аутентифицировать пользователя в принципе имеющего пароль, а затем будет искать среди пользователей, у которых нет пароля. Такой подход позволяет одному пользователю назначать различные права (в зависимости от того, задан пароль или нет).
 + **dbname** - Если параметр задан, его значение будет использоваться в качестве имени базы данных по умолчанию при выполнении запросов.
 + **port** - Задает номер порта для подключения к серверу MySQL.
 + **socket** - Задает сокет или именованный пайп, который необходимо использовать.

#### Примеры:

```php
<?php 
$link = mysqli_connect('localhost', 'my_user', 'my_password', 'my_db');
// 1 -  устанавливаем соединение с БД

if (!$link) {
    die('Ошибка подключения (' . mysqli_connect_errno() . ') '
            . mysqli_connect_error());
}
// 2 - проверяем на ошибки соединение

echo 'Соединение установлено... ' . mysqli_get_host_info($link) . "\n";
// 3 - сообщаем об успешном соединении, и сообщаем данные о нём

mysqli_close($link);
// 4 - закрываем соединение
?>
```

### <a name="connect_err"></a> Ошибки соединения
[Наверх](#Up)

#### <a name="mysqli_connect_errno"></a> mysqli_connect_errno() - Возвращает код ошибки последней попытки соединения
[Наверх](#Up) | [Manual](http://ua2.php.net/manual/ru/mysqli.connect-errno.php)

```php
<?php 
int mysqli_connect_errno ( void )
?>
```

#### Примеры:

```php
<?php 
$link = @mysqli_connect('localhost', 'fake_user', 'my_password', 'my_db');

if (!$link) {
    die('Ошибка соединения: ' . mysqli_connect_errno());
}
?>
```

---

#### <a name="mysqli_connect_error"></a> mysqli_connect_error() — Возвращает описание последней ошибки подключения
[Наверх](#Up) | [Manual](http://ua2.php.net/manual/ru/mysqli.connect-error.php)

```php
<?php 
string mysqli_connect_error ( void )
?>
```

#### Примеры:

```php
<?php 
$link = @mysqli_connect('localhost', 'fake_user', 'my_password', 'my_db');

if (!$link) {
    die('Connect Error: ' . mysqli_connect_error());
}
?>
```

***
### <a name="mysqli_errno"></a> mysqli_errno() — Возвращает код ошибки последнего вызова функции  
[Наверх](#Up) | [Manual](http://ua2.php.net/manual/ru/mysqli.errno.php)

```php
<?php int mysqli_errno ( mysqli $link ))?>
```

#### Примеры:

```php
<?php
$link = mysqli_connect("localhost", "my_user", "my_password", "world");

/* Проверить соединение */
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}

if (!mysqli_query($link, "SET a=1")) {
    printf("Errorcode: %d\n", mysqli_errno($link));
    // получаем данные номера ошибки запроса
}

/* Закрыть соединение */
mysqli_close($link);
?>
```

***
### <a name="mysqli_error"></a> mysqli_error() — Возвращает строку с описанием последней ошибки
[Наверх](#Up) | [Manual](http://ua2.php.net/manual/ru/mysqli.error.php)

```php
<?php string mysqli_error ( mysqli $link ) ?>
```

#### Примеры:

```php
<?php
$link = mysqli_connect("localhost", "my_user", "my_password", "world");

/* check connection */
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}

if (!mysqli_query($link, "SET a=1")) {
    printf("Errormessage: %s\n", mysqli_error($link));
}

/* close connection */
mysqli_close($link);
?>
```

***
### <a name="mysqli_real_escape_string"></a> mysqli_real_escape_string() — Экранирует специальные символы в строках для использования в выражениях SQL
[Наверх](#Up) | [Manual](http://ua2.php.net/manual/ru/function.mysql-real-escape-string.php)

```php
<?php 
string mysql_real_escape_string ( string $unescaped_string [, resource $link_identifier = NULL ] )
?>
```

#### Примеры:

```php
<?php
// Соединение
$link = mysql_connect('mysql_host', 'mysql_user', 'mysql_password')
    OR die(mysql_error());

// Запрос
$query = sprintf("SELECT * FROM users WHERE user='%s' AND password='%s'",
            mysql_real_escape_string($user),
            mysql_real_escape_string($password));
?>
```

***

### <a name="mysqli_query"></a> mysqli_query() — Выполняет запрос к базе данных
[Наверх](#Up) | [Manual](http://ua2.php.net/manual/ru/mysqli.query.php)

```php
<?php 
mixed mysqli_query ( mysqli $link , string $query [, int $resultmode = MYSQLI_STORE_RESULT ] )
?>
```

#### Параметры:

 + **link** - Только для процедурного стиля: Идентификатор соединения, полученный с помощью mysqli_connect() или mysqli_init()
 + **query** - Текст запроса.
 + **resultmode** - Либо константа MYSQLI_USE_RESULT, либо MYSQLI_STORE_RESULT в зависимости от требуемого поведения функции. По умолчанию используется MYSQLI_STORE_RESULT. При использовании MYSQLI_USE_RESULT все последующие вызовы этой функции будут возвращать ошибку Commands out of sync до тех пор, пока не будет вызвана функция mysqli_free_result(). С константой MYSQLI_ASYNC (доступна при использовании mysqlnd) возможно выполнять запросы асинхронно. В этом случае для получения результатов каждого запроса необходимо использовать функцию mysqli_poll().

#### Примеры:

```php
<?php
$link = mysqli_connect("localhost", "my_user", "my_password", "world");

/* проверка соединения */
if (mysqli_connect_errno()) {
    printf("Не удалось подключиться: %s\n", mysqli_connect_error());
    exit();
}

/* Создание таблицы не возвращает результирующего набора */
if (mysqli_query($link, "CREATE TEMPORARY TABLE myCity LIKE City") === TRUE) {
    printf("Таблица myCity успешно создана.\n");
}

/* Select запросы возвращают результирующий набор */
if ($result = mysqli_query($link, "SELECT Name FROM City LIMIT 10")) {
    printf("Select вернул %d строк.\n", mysqli_num_rows($result));

    /* очищаем результирующий набор */
    mysqli_free_result($result);
}

/* Если нужно извлечь большой объем данных, используем MYSQLI_USE_RESULT */
if ($result = mysqli_query($link, "SELECT * FROM City", MYSQLI_USE_RESULT)) {

    /* Важно заметить, что мы не можем вызывать функции, которые взаимодействуют
       с сервером, пока не закроем результирующий набор. Все подобные вызовы
       будут вызывать ошибку 'out of sync' */
    if (!mysqli_query($link, "SET @a:='this will not work'")) {
        printf("Ошибка: %s\n", mysqli_error($link));
    }
    mysqli_free_result($result);
}

mysqli_close($link);
?>

***
```
### <a name="mysqli_free_result"></a> mysqli_free_result() — Освобождает память занятую результатами запроса
[Наверх](#Up) | [Manual](http://ua2.php.net/manual/ru/mysqli-result.free.php)

```php
<?php 
void mysqli_free_result ( mysqli_result $result )
?>
```

***

### <a name="mysqli_fetch_array"></a> mysqli_fetch_array() — Выбирает одну строку из результирующего набора и помещает ее в ассоциативный массив, обычный массив или в оба
[Наверх](#Up) | [Manual](http://ua2.php.net/manual/ru/mysqli-result.fetch-array.php)

```php
<?php 
mixed mysqli_fetch_array ( mysqli_result $result [, int $resulttype = MYSQLI_BOTH ] )
?>
```

#### Параметры:

 + **result** - Только для процедурного стиля: Идентификатор результата запроса, полученный с помощью mysqli_query(), mysqli_store_result() или mysqli_use_result().
 + **resulttype** - Этот необязательный параметр принимает значение константы, которая указывает на тип массива, в который требуется поместить данные. Возможные значения параметра: MYSQLI_ASSOC, MYSQLI_NUM или MYSQLI_BOTH. При использовании константы MYSQLI_ASSOC функция будет вести себя идентично mysqli_fetch_assoc(), а при MYSQLI_NUM идентично функции mysqli_fetch_row(). При задании MYSQLI_BOTH функция создаст один массив, включающий атрибуты обоих вариантов.

#### Примеры:

```php
<?php
$link = mysqli_connect("localhost", "my_user", "my_password", "world");

/* проверка подключения */
if (mysqli_connect_errno()) {
    printf("Не удалось подключиться: %s\n", mysqli_connect_error());
    exit();
}

$query = "SELECT Name, CountryCode FROM City ORDER by ID LIMIT 3";
$result = mysqli_query($link, $query);

/* обычный (индексированный) массив */
$row = mysqli_fetch_array($result, MYSQLI_NUM);
printf ("%s (%s)\n", $row[0], $row[1]);

/* ассоциативный массив */
$row = mysqli_fetch_array($result, MYSQLI_ASSOC);
printf ("%s (%s)\n", $row["Name"], $row["CountryCode"]);

/* ассоциативный и обычный массивы */
$row = mysqli_fetch_array($result, MYSQLI_BOTH);
printf ("%s (%s)\n", $row[0], $row["CountryCode"]);

/* очищаем результаты выборки */
mysqli_free_result($result);

/* закрываем подключение */
mysqli_close($link);
?>
```

***

### <a name="mysqli_fetch_all"></a> mysqli_fetch_all() — Выбирает все строки из результирующего набора и помещает их в ассоциативный массив, обычный массив или в оба
[Наверх](#Up) | [Manual](http://ua2.php.net/manual/ru/mysqli-result.fetch-all.php)

```php
<?php 
mixed mysqli_fetch_all ( mysqli_result $result [, int $resulttype = MYSQLI_NUM ] )
?>
```

#### Параметры:

 + **result** - олько для процедурного стиля: Идентификатор результата запроса, полученный с помощью mysqli_query(), mysqli_store_result() или mysqli_use_result().
 + **resulttype** -Этот необязательный параметр принимает значение константы, которая указывает на тип массива, в который требуется поместить данные. Возможные значения параметра: MYSQLI_ASSOC, MYSQLI_NUM или MYSQLI_BOTH.

#### Примеры:

```php
<?php
$items = mysqli_fetch_all($result, MYSQLI_ASSOC);
// возвращаем полный массив данных из всех обработанных полей

mysqli_free_result($result);
// освобождаем полученный результат
?>
```
