<a name="Up"></a>

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
