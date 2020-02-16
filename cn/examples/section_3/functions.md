---
version: 1.0.0
example_title: Functions
---

# Functions

函数是一个有组织、可重用的代码块，用于执行单个相关操作。
函数为应用程序提供了更好的模块性和高度的代码重用。
理想情况下，您应该考虑使用[单一责任原则](https://en.wikipedia.org/wiki/single_responsibility_principle) (SOLID)，它声明每个模块或功能都应该有责任
对于软件提供的功能的单个部分，以保持代码的可维护性。
像C和Go一样，函数不能重载。

```go
fn sum(x, y int) int {
    return x + y
}

println(sum(77, 33)) // 110
```

> 注意：类型在参数名之后。

```go
fn full_name(first_name, last_name string) string {
    return first_name + ' ' + last_name
}

println(full_name("Vitor", "Oliveira")) // Vitor Oliveira
```

## 函数变量

函数也可以是可变的，即接受无穷多个参数。
它们不是数组，不能返回。

```go
fn foo(test ...string) {
    for txt in test {
        println(txt)
    }
}

foo("V", "is", "the", "best", "lang" , "ever")
```

输出

```console
V
is
the
best
lang
ever
```

## 多返回函数

与Go类似，V中的函数也可以返回多个不同类型的函数。

```go
fn student(name string, age int) (string, int) {
    return name, age
}

name, age := student("Tom", 15)
println(name1)
println(age1)
```

输出

```console
Tom, 15
```

## 高阶函数

V中的函数也可以接受另一个函数作为参数
需要排序、映射、筛选等。

```go
fn square(num int) int {
    return num * num
}

fn run(value int, op fn(int) int) int {
    return op(value)
}

println(run(10, square)) // 100
```

## 命名规则

以下是命名函数时应记住的规则。

- 名称不应包含像`AlphaTest`这样的大写字母`

- 使用下划线作为分隔符，如`hello_world`

- 名称不应以开头`_`

- 名称应尽可能具有描述性

- 名称不应包含`__`

- 名称不应包含任何空格

这些规则来自[`Snake_Case`](https://en.wikipedia.org/wiki/Snake_Case) V使用Snake Case，并且更喜欢它，因为它更易于阅读、书写和理解。

### 有效名称

```go
fn i_am_valid()
fn thisworkstoo()
fn print_values_through_struct()
```

### 无效名称

```go
fn IamNotValid()
fn _print()
fn print__logs()
fn new Make Lexer()
```

## Exercises

1. Write a V program to find the square of any number using the function.
2. Write a V program to check a given number is even or odd using the function.
3. Write a V program to convert decimal number to binary number using the function.
4. Write a V program to check whether a number is a prime number or not using the function.
5. Write a V program to get the largest element of an array using the function.
