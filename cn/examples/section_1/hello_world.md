---
version: 1.0.0
example_title: 格式化打印
---

# 格式化打印

打印由各种I/O流函数处理。人们应该要知道如何去使用它们。
- `print`：用于将文本打印到不带换行符的输出流。
- `println`：与`print`相同，但它会自动追加换行符。
- `eprint`：与`print`相同，但它会输出到错误流（stderr）。
- `eprintln`：与`println`相同，不过它会输出到错误流（stderr）。
- `panic`：程序的输出和退出。

```v
print('Hello World')
print('Hello V')
```

它在屏幕上将会打印 `Hello WorldHello V`

如果要在新行上打印下一行，则必须执行`\n`。

```v
print('Hello World \n')
print('Hello V ')
```

如果不想使用`\n`，则可以使用`println`。

# 注释

V支持单行注释`//`和多行注释`/**/`。
它们应该用于记录代码，以便让其他用户知道代码是如何工作的。
它还可以用于临时注释代码，以后不得不使用。

```v
// 这是单行注释

/* 这是
*  多行注释
* /* 这也可以嵌套*/
*/
```


## 练习

尝试在`hello.v`中删掉代码的注释，看看会发生什么。
