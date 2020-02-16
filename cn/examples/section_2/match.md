---
version: 1.0.0
example_title: Match
---

# Match

## match语句

match语句是`if-else`的简写方法。
如果输入匹配，将执行第一个匹配分支的语句块，并返回其最后一个表达式。
`else`分支将在没有其他匹配分支时执行。

```v
num := 1
match num % 2 == 0  {
    true { print('The input number is even.') }
    else { print('The input number is odd.') }
}
```

还可以使用`match`初始化变量，以便根据条件具有不同的值。

```v
num := 3
s := match num {
    1 { 'one' }
    2 { 'two' }
    else {
        'many'
    }
}
```

例如:

```v
fn even(num int) bool {
    match num % 2 == 0  {
        true { print('The input number is even.') }
        else { print('The input number is odd.') }
    }
}

fn num_to_str(num int) int {
    match num {
        1 { 'one' }
        2 { 'two' }
        else {
            'many'
        }
    }
}

fn main() {
    println(even(14))           // 'The input number is even.'
    println(even(3))            // 'The input number is odd.'
    println(num_to_str(1))      // 'one'
    println(num_to_str(2))      // 'two'
    println(num_to_str(352))    // 'many'
}
```

### 枚举

还可以使用`variant`语句将`enum`值（变量）作为分支进行匹配：

```v
enum Animal {
    cat
    dog
    goldfish
    pig
}

fn makes_miau(a Animal) bool {
    return match a {
        .cat { true }
        else { false }
    }
}

fn is_land_creature(a Animal) bool {
    return match a {
        .cat { true }
        .dog { true }
        .pig { true }
        else {
            false
        }
    }
}
// OR LIKE THAT
fn is_land_creature_alt(a Animal) bool {
    return match a {
        .goldfish { false }
        else {
            true
        }
    }
}

fn main() {
    my_cat := Animal.cat
    my_goldfish := Animal.goldfish

    println(makes_miau(my_cat))             // true
    println(is_land_creature(my_cat))       // true
    println(is_land_creature(my_goldfish))  // false
}
```
### 练习

1.编写一个V程序，创建一个从1到50的所有偶数数组。
2.编写一个V程序，给定一个数字数组，返回最大值。
3.编写一个V程序来确定颜色（枚举）是红色还是蓝色
