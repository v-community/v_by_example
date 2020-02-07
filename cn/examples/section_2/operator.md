# 运算符

V支持以下运算符：

## 基本运算符

- `+` (加法) 用于 int, float和string

- `-` (减法) 用于 int和float类型

- `*` (乘法) 用于 int和float类型

- `/` (除法) 用于 int和float类型

- `%` (取模) 用于 int类型

- `=` (赋值) 用于改变值

- `:=` 用于初始化值

```v
println(3 + 5)
println(2.0 + 5.0)
println('hello' + 'world')

println(9 - 10)
println(7.0 - 5.0)

println(3 * 5)
println(2.0 * 4)

println(23 / 3)
println(25.0 / 5.0)

println(27 % 5)
println(27 % 3)
```

输出

```v
8
7.0
hello world

-1
2.0

15
8.0

7
5.0

2
0
```

> 注意：与其他语言不同，V不允许带浮点数的模。

## 比较运算符

-`>`大于

-`<`小于

-`=`等于

-`>=`大于或等于

-`<=`小于或等于

- `!=`不等于

## 布尔运算符

-`&amp;&amp;`和

-`||`或

- `!`非

## 按位运算符

-`>>`左位移

-`<<`右位移

-`&amp;`按位和

-`|`按位或

-`^`按位异或

## 赋值运算符

-`+=`与`foo=foo+var相同`

-`-=`与`foo=foo-var相同`

-`*=`与`foo=foo*var相同`

-`/=`与`foo=foo/var相同`

-`&amp;=`与`foo=foo&amp;var相同`

-`|=`与`foo=foo'var相同`

-`>=`与`foo=foo>>变量相同`

-`<=`与`foo=foo<<var相同`

## 特殊运算符

- `in` for membership

- `none` for optional
