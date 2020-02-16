---
version: 1.0.0
example_title: Struct
---

# Struct

struct是一种复合数据类型（或记录）声明，它在内存块中的一个名称下定义物理分组的变量列表，允许通过单个指针或通过返回相同地址的struct声明的名称访问不同的变量。
对于来自[OOP]https://en.wikipedia.org/wiki/Object-oriented_programming) 语言的人来说，它可以被认为是“类”，但有更多的限制。

```go
struct User {
    name string
    email string
    country string
}

fn main() {
    user := User {
        name: "V developers"
        email: "developers@vlang.io"
        country: "Canada"
    }

    println(user.country)
}
```

> 注意：结构是在堆栈上分配的。

创建结构的新实例时，可以使用逗号分隔每个字段。当您想在一行上创建一个新实例时，它很有用。

```go
user := User { name: "V developers", email: "developers@vlang.io", country: "Canada" }
```

## 前缀`&amp;`

您还可以在堆上分配一个结构，并使用`&amp;`前缀获取对它的引用，如下所示：

```go
user := &User{"V developers", "developers@vlang.io", "Canada"}
println(user.name)
```

`user`的类型是`&amp;user`。它是对`User`的引用。

## 访问修饰符

默认情况下，结构字段是`private`和`immutable`。它们的访问修饰符可以用`pub`和`mut`更改。

```go
struct User {
    email string   // private and immutable (default)
}
```

您可以将它们定义为`private mutable`。

```go
struct User {
    email string
mut:
    first_name string  // private mutable
    last_name string   // (you can list multiple fields with the same access modifier)
}
```

您还可以将它们定义为`public immutable`（只读）。

```go
struct User {
    email string
mut:
    first_name string
    last_name string
pub:
    sin_number int     // public immutable (readonly)
}
```

或作为`public`，但仅在父模块中是`mutable`。

```go
struct User {
   email string
mut:
   first_name string
   last_name string
pub:
   sin_number int
pub mut:
   phone int    // public, but mutable only in parent module
}
```

或父模块内外的`public`和`mutable`。

```go
struct User {
    email string
mut:
    first_name string
    last_name string
pub:
    sin_number int
pub mut:
    phone int
__global:
    address_1 string    // public and mutable both inside and outside parent module
    address_2 string    // (not recommended to use, that's why the 'global' keyword
    city string         // starts with __)
    country string
    zip     string
}
```

## 命名规则

- `struct`的名称应始终为大写。

- 变量命名使用[`Snake_Case`](https://github.com/v-community/v_by_example/blob/master/en/examples/section_1/variables.md#naming-rules) 。

## 练习
1.创建存储和显示“用户”信息的结构。
2.创建一个包含“x”和“y”字段的“Point”结构，并用private和public保护它们。
