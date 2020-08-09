---
version: 1.0.0
example_title: 方法
---

# Methods

V没有Class。但是可以为类型定义方法。
方法是一个具有特殊接收器参数的函数，
只有指定类型的接收器才能执行此函数。
接收方在`fn`和方法名之间有自己的参数列表。

```go
struct User {
    name string
    email string
mut:
    age int
}

fn (u User) can_register() bool {
    return u.age > 15
}

fn (u mut User) has_birthday() {
    u.age += 1
}

fn main() {
    mut bob := User {
        name: 'Bob'
        email: 'bob@bob.com'
        age: 15
    }
    alice := User {
        name: 'Alice'
        email: 'alice@alice-mail.com'
        age: 17
    }
    println(bob.can_register())
    println("Bob needs to be 16 to register, but he only is ${bob.age}.")
    println(alice.can_register())
    bob.has_birthday()
    println(bob.age)
}
```

输出

```console
false
Bob needs to be 16 to register, but he only is 15.
true
16
```

上面的代码实现了两种类型为`User`的接收器`u`的方法。
注意，`has\birthday()`方法有一个mut接收器，这是必需的，因为我们要更改它的数据。
V的惯例不是使用诸如`self、this`之类的接收者名字，而是一个短的，最好是一个只有一个字母的名字。

## 练习
1.为`Person`类型创建一个确定某人是否未成年的方法。
2.创建一个确定`Animal`是否有毛发的方法。
