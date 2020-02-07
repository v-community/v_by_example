# 数组

数组是存储在连续内存位置的项的集合。它是一个聚合数据结构，旨在存储一组相同类型的对象。它是存储和访问一系列对象的最有效的数据结构。

## 如何声明数组

**创建包含整数值的数组:**

```go
mut ages := [18, 25, 37]

println(ages)
```

Output

```console
[18, 25, 37]
```

**或者创建一个包含字符串值的数组:**

```go
mut users := ['vbrazo', 'donnisnoni95', 'Delta456']

println(users)
```

输出

```
['vbrazo', 'donnisnoni95', 'Delta456']
```

> 注意：所有元素必须具有相同的类型。以下代码将无法编译。

```go
mut users := ['vbrazo', 'donnisnoni95', 'Delta456', 0]
```

输出

```
~/main.v:2:43: bad array element type `int` instead of `string`
```

## 创建空数组

如果要创建一个新的空数组，只需声明`[]`，后跟数据类型。

```go
mut names := []string
mut numbers := []int
```

## 访问数组的元素

```go
mut users := ['vbrazo', 'donnisnoni95', 'Delta456']

println(users[0])
println(users[2])
println(users[1])
```

输出

```go
vbrazo
Delta456
donnisnoni95
```

## 将值附加到数组

`<<` 是将值附加到数组末尾的运算符。

```go
mut ages := [18]
ages << 47

println(ages)
```

数组

```go
[18, 47]
```

它还可以附加一个完整的数组。

```go
mut ages := [18]
ages << [47, 49]

println(ages)
```

输出

```
[18, 47, 49]
```

## 数组的长度/大小

`.len` 方法返回数组的长度。

```go
mut names := ['Thiago', 'John']

println(names.len)
```

输出

```
2
```

## In运算符

`in` 检查元素是否在数组中。

```go
mut names := ['Thiago', 'Alex', 'Joe']

println('Vitor' in names)
println('Thiago' in names)
```

输出

```
false
true
```

## 切片

在V中切片很容易，可以使用默认的
V切片功能，无需调用`slice（）`方法。
语法如下`my_array[start..end]`

```go
animals := ['lion', 'goose', 'chicken', 'turkey', 'tiger']
poultry := animals[1..4]
println(poultry) // ["goose", "chicken", "turkey"]
```

如果要从索引的开头开始切片，只需将其忽略为放置`0`，然后改`“my_array[…end]`或`my_array[start…]`。

```go
x := ['h', 'e', 'l', 'l', 'o']
y := x[..x.len-1]
z := x[1..]
println(y) // ['h', 'e', 'l', 'l']
println(z) // ['e', 'l', 'l', '0']
```

## 练习
1.编写一个V程序，将元素存储在数组中并打印出来。
2.编写一个V程序，读取数组中n个值，并按相反顺序显示。
3.编写一个V程序来查找数组中所有元素的和。
4.编写一个V程序，将一个数组的元素复制到另一个数组中。
5.编写一个V程序来计算数组中重复元素的总数。
