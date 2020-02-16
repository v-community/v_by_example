---
version: 1.0.0
example_title: 变量
---

# 变量

在V语言中，变量可以用`：=`运算符声明和初始化。变量只能以这种方式在V中声明，这意味着所有变量都有一个初始值。变量的类型是从右边的值推断出来的。默认情况下，V中的变量是不可变的。

```go
age := 23               // int
name := 'Alice'         // string
is_adult := age > 21    // bool

println(age_str)        // 23
println(name)           // Alice
println(is_adult)       // true
```

> Note:变量只能在函数中定义。所以在V中没有全局变量和全局状态。

要更改变量的值，要确保它必须是可变的。这可以在声明变量时使用`mut`关键字来完成。要给变量赋值，可以使用`=`。

```go
mut age := 20       // 声明可变变量age并将其赋给值20。
println(age)        // 20
age = 21            // 为age赋个新的值
println(age)        // 21
```

在此处省略`mut`关键字将导致错误，因为无法更改不可变变量的值。

```go
fn main() {
    age = 20
    println(age)
}
```

上面的代码在编译过程中会导致错误，因为未声明变量`age`，

```go
fn main() {
    mut age := 20       // 我们声明可变变量age并将其赋给值20。
    println(age)        // 20
    age := 21           // 错误
}
```

这里的`age:=21`在编译时将导致另一个错误，因为变量`age`已在作用域中定义。记住这一点很简单，只要用`：=`声明值并用`=`赋值。

像Go一样，您还可以使用`_`忽略掉不需要的值。通常用于多返回函数。

```go
_ := "I don't need this value"
println(_) // 错误：不能将“_”用作值
```

## Naming Rules

以下是命名变量时应记住的规则。
-名称不应该包含像`AlphaTest`这样的大写字母`
-使用下划线作为分隔符，如`hello_world``
-名称应该尽可能具有描述性
-名称不应该包含`__`
-名称不应该包含任何空格
-如果名称大于11，则必须要使用`_`作为分隔符

这些规则来自[`Snake_Case`](https://en.wikipedia.org/wiki/Snake_Case) V语言使用Snake Case，并且更喜欢它，因为它更易于阅读、书写和理解。

### 有效名称

```go
boby
john_dads
myfamily_number
```

### 无效名称

```go
IamNotValid
new Make
```
