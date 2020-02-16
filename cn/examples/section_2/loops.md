---
version: 1.0.0
example_title: 循环结构
---

# 循环结构

在V语言中只有一种类型的循环，像Go一样，它可以在很多方面使用。

## `for`循环

`for`循环提供了一种快速而简单的方法来重复做一些事情。
如果你想一次又一次地运行相同的代码，每次使用不同的值，它们都很方便。
你可以把一个循环想象成一个电脑版的游戏，告诉某人朝一个方向走X步，然后朝另一个方向走Y步；
例如，“向东走五步”可以用循环的方式来表达：

```go
for i := 0; i < 5; i++ {
    println('Walking one step')
}
```

V有`for`循环结构，循环可以用不同的方式编写：

- 数组/映射的`in`运算符

```go
ages := [18, 25, 32, 43, 50]

for age in ages {
    println(age)
}
```

> 注意：该值是只读的。

- 带条件的`for`循环

这是一个控制流语句，允许基于给定的布尔条件重复执行代码。
条件周围没有括号，并且始终需要大括号。

```go
mut factorial := 1
mut counter := 1

for {
    counter++
    if counter > 5 {
       println(factorial)
       break
    }
    factorial = factorial * counter
}

println(counter)
```

输出

```console
120
6
```

带有break语句的for循环总是可以缩短代码，方法是将逆条件放在for之后，使其与其他语言中的while语句等价。

```go
mut factorial := 1
mut counter := 1

for counter <= 5 {
    factorial = factorial * counter
    counter++
}
println(factorial)
println(counter)
```

输出

```console
120
6
```

- 传统的C风格

```go
mut factorial := 1
mut counter := 1

for counter = 1; counter < 6; counter++ {
    factorial = factorial * counter
    if counter == 5 {
        print(factorial)
        continue
    }
    println(counter)
}
```

- 无限循环

`for`循环也能无限循环

```go
for {
    println('foo')
}
```

## 练习

1.写一个V程序来显示前10个自然数。
2.编写一个V程序，找出前10个自然数的和。
3.编写一个V程序来打印数组中的整数，并打印它们的平均值。
4.编写一个V程序，从键盘上读出10个数字，求出它们的和和和平均值。
5.编写一个V程序来显示一个整数之前的数的立方。
