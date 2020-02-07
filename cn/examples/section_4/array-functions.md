# 数组函数

## `repeat`

语法

```go
array.repeat(number type)
```

生成具有给定元素次数的数组。

```go
foo := [1, 2].repeat(5)
println(foo) // [1, 2, 1, 2, 1, 2, 1, 2, 1, 2]
```

## `delete`

语法

```go
array.delete(ix type)
```

删除索引`ix`处数组中的元素。

```go
mut even_numbers = [2, 4, 6, 8, 10]
even_numbers.delete(3)
println(even_numbers) // [2, 4, 6, 10]
```

## `reverse`

语法

```go
array.reverse()
```

反转数组。

```go
float_num := [1.1, 1.3, 1.25, 1.4]
float_num.reverse() // [1.4, 1.25, 1.3, 1.1]
```

## `clone`

语法

```go
array.clone()
```

克隆并返回一个新数组。

```go
foo := [1, 2, 4, 5, 4, 6]
foo1 := foo.clone()
println(foo1) // [1, 2, 4, 5, 4, 6]
```
