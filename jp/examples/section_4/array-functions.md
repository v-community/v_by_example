---
version: 1.0.0
example_title: 配列の関数
---

# 配列の関数

## `repeat`

構文

```go
array.repeat(number type)
```

配列の要素を指定の回数だけ繰り返します。

```go
foo := [1, 2].repeat(5)
println(foo) // [1, 2, 1, 2, 1, 2, 1, 2, 1, 2]
```

## `delete`

構文

```go
array.delete(ix type)
```

インデックス`ix`の位置にある要素を配列から削除します。

Deletes the element present in the array at index `ix`.

```go
mut even_numbers := [2, 4, 6, 8, 10]
even_numbers.delete(3)
println(even_numbers) // [2, 4, 6, 10]
```

## `reverse`

構文

```go
array.reverse()
```

逆順の配列を返します。

```go
float_num := [1.1, 1.3, 1.25, 1.4]
float_num.reverse() // [1.4, 1.25, 1.3, 1.1]
```

## `clone`

構文

```go
array.clone()
```

配列を複製して新しい配列を返します。

```go
foo := [1, 2, 4, 5, 4, 6]
foo1 := foo.clone()
println(foo1) // [1, 2, 4, 5, 4, 6]
```
