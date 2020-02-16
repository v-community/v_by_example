---
version: 1.0.0
example_title: If语句
---

# If语句

## `if` 表达式

`if`语句是一个编程条件语句，如果被证明为真，则执行块中给定的代码。下面是V中if语句的一般示例：

```go
john_height := 100
maria_height := 178

if john_height < maria_height {
    println("Maria is taller than John")
}
```

在上面的代码中，`println()`只在条件为true时执行。
条件周围不需要括号，并且始终需要大括号。

## `else` 语句

`else`语句是一种编程条件语句，其中当`if`的计算结果为false时，`else`块中的代码将执行。

```go
joey_age := 12
kevin_age := 15
if joey_age > kevin_age {
    println("Joey is older")
} else {
    println("Kevin is older")
}
```

在本例中，`else`块中的代码将执行，因为`if`中的条件计算结果为`false`。

## `else if` 语句

`if…else`语句根据测试表达式是`true`还是`false`执行两个不同的代码。有时，必须从两种以上的可能性中做出选择。`if……if……else`允许您在多个测试表达式之间进行检查并执行不同的语句。

```go
tom_age := 20
ashia_age := 38

if tom_age < ashia_age {
    println("Tom is younger than Ashia")
} else if tom_age > ashia_age {
    println("Tom is older than Ashia")
} else {
    println("Tom and Ashia are the same age")
}
```

输出

```console
Tom is younger than Asia
```

## 嵌套的 `if..else` 语句

将`if…else`语句嵌套在另一个`if`或`else…if`语句中始终是一个好的做法，这意味着您可以在另一个`if`或`else…if`语句中使用一个`if`、`else`或`else…if`语句。

```go
tom_age := 20
ashia_age := 38

if tom_age < ashia_age {
    if tom_age < 18 {
        println("tom_age < 18 and younger than Ashia.")
    } else {
        println("tom_age >= 18 and younger than Ashia.")
    }
} else if tom_age > ashia_age {
    println("$tom_age > $ashia_age")
} else {
    println("$tom_age == $ashia_age")
}
```

输出

```console
tom_age >= 18 and younger than Ashia.
```

## 使用 `if..else` 表达式

`if..else`也可以用作表达式：

```go
tom_age := 20
ashia_age := 38

s := if tom_age < ashia_age {
    "Tom is the youngest"
} else {
    "Ashia is the youngest"
}

print(s)
```

输出

```console
Tom is the youngest
```

## 练习

1.编写一个V程序来接受两个整数并检查它们是否相等。
2.编写一个V程序来检查给定的数字是偶数还是奇数。
3.编写一个V程序来检查给定的数字是正数还是负数。
4.写一个V程序来确定某一年是否是闰年。
