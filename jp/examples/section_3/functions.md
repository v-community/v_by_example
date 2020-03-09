---
version: 1.0.0
example_title: 関数
---

# 関数

関数とは、再利用可能な形に整えられたコードのブロックであり、単一の作業を実行します。
関数はアプリケーションのモジュラリティを高め、コードをより高度なレベルで再利用できるようにします。

理想は、SOLID原則で言うところの[単一責任の原則](https://en.wikipedia.org/wiki/Single_responsibility_principle)に従うことです。この原則は「関数は、そのソフトウェアが提供する機能のひとつの部品についてのみ責任を負うこと」というものであり、コードを今後もメンテナンスできるようにするためのものです。

CやGoと同様、Vの関数もオーバーライドは禁止されています。

```v
fn sum(x, y int) int {
    return x + y
}

println(sum(77, 33)) // 110
```

> 注意: 型名は引数名の後ろに置きます。

```v
fn full_name(first_name, last_name string) string {
    return first_name + ' ' + last_name
}

println(full_name("Vitor", "Oliveira")) // Vitor Oliveira
```

## 可変長引数を取る関数

関数は、個数が不定の引数を受け取ることもできます。受け取った可変長引数は配列ではありません。また、受け取った可変長引数を返すこともできません。

```v
fn foo(test ...string) {
    for txt in test {
        println(txt)
    }
}

foo("V", "is", "the", "best", "lang" , "ever")
```

上の出力結果:

```console
V
is
the
best
lang
ever
```

## 値を複数返す関数

Goと同様、Vの関数も、型の異なる値を複数返せます。

```v
fn student(name string, age int) (string, int) {
    return name, age
}

name, age := student("Tom", 15)
println(name)
println(age)
```

上の出力結果:

```console
Tom, 15
```

## 高階関数

Vの関数は、別の関数をパラメータとして受け取ることもできます。これは`sort`や`map`や`filter`といった処理でよく必要になります、

```v
fn square(num int) int {
    return num * num
}

fn run(value int, op fn(int) int) int {
    return op(value)
}

println(run(10, square)) // 100
```

## 命名のルール

以下は、関数の命名で守るべきルールの一覧です。

- 大文字を含んではならない（✖`AlphaTest`）
- 区切り文字にはアンダースコアを用いる（○`hello_world`）
- 名前の冒頭には`_`を置かないこと
- できるかぎり、意味の明快な名前を付けること
- 名前に`__`を含んではならv
- 名前に（種類を問わず）スペース文字を含んではならない

上のルールは[`snake_case`](https://en.wikipedia.org/wiki/Snake_case)が由来です。Vではsnake_caseスタイルが用いられ、また推奨されます（読みやすく、書きやすく、理解しやすいため）

### 正しい名前

```v
fn i_am_valid()
fn thisworkstoo()
fn print_values_through_struct()
```

### 正しくない名前

```v
fn IamNotValid()
fn _print()
fn print__logs()
fn new Make Lexer()
```

## 演習

1. 数値の2乗を求めるVプログラムを関数の形で書きましょう。
2. 渡された数値が偶数か奇数かをチェックするVプログラムを関数の形で書きましょう。
3. 10進数を2進数に変換するVプログラムを関数の形で書きましょう。
4. 渡された数値が素数化どうかをチェックするVプログラムを関数の形で書きましょう。
5. 渡された配列の要素の最大値を得るVプログラムを関数の形で書きましょう。

