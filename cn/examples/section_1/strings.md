---
version: 1.0.0
example_title: 字符串
---

# 字符串

在V中，可以使用`：=`运算符定义字符串。默认情况下，字符串（与其他变量一样）是不可变的。
一个可以使用`""`或 `''`来表示字符串。使用`vfmt`时，除非包含单引号字符，否则所有双引号字符串都将转换为单引号字符串。

```go
name := 'Bob'
println(name)       // Bob
println(name.len)   // 3
```

获取字符串的长度使用`.len`。

## 插入

可以在变量前面使用`$`进行字符串插值：

```go
name:= 'Bob'
println('Hello $name!')     // Hello Bob!
```

使用`${}`可以有更复杂的插值语法表达式：

```go
struct User {
    name string
    age int
}
bob := User {
    name: 'Bob'
    age: 17
}
println('Say Hello to a new User: ${bob.name}, ${bob.age}')             // Say Hello to new User: Bob, 17
println('${bob.name}s age is higher or equal to 18: ${bob.age >= 18}')  // 0 <=> number representation for false
```

## 连接操作符

使用`+`运算符符字符串会被连接。

```go
text := 'Hello'
concatenated_text := text + ' World!'
println(text)                   // Hello
println(text + ' World!')       // Hello World!
println(concatenated_text)      // Hello World!
```

添加到字符串与连接可以使用`+=`运算符。因为字符串在默认情况下是不可变的，所以只有用`mut`声明它们时才能这样做。

```go
mut hello := 'Hello '
hello += 'from V!'      // 附加“从V！”到hello中存储的字符串。
println(hello)          // Hello from V!
```

在V中，字符串数据使用UTF-8编码，字符串本身是一个只读字节数组。这使得切片成为可能，这意味着我们可以访问单个字符的文本或字符串变量的切片。
```go
robert := 'Robert'
bert := robert[2..robert.len]                                 // bert
rob := robert[0..3]                                           // Rob
println('The persons of interest are: $robert, $bert, $rob')  // The persons of interest are: Robert, bert, Rob
```

### Notes

V中的所有运算符两边必须具有相同类型的值。下面的代码无法编译，因为`age`是`int`类型的：

```go
age := 25
println('age = ' + age)
```

因此，我们需要使用`.str（）`或使用字符串插值（最好用的方法）将其转换为字符串：

```go
age := 25
println('age = ' + age.str())   // age = 25
println('age = $age')           // age = 25
```

要定义字符，可以使用：` `` `。原始字符串可以定义为前缀`r`。

```go
hello := 'Hello\nWorld'
println(hello)                  // Hello
                                // World
raw_hello := r'Hello\nWorld'
println(raw_hello)              // Hello\nWorld
```
