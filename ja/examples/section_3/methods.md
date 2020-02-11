# メソッド

Vにはクラスというものはありません。しかし型に対してメソッドを定義できます。

メソッド（method）とは、1個のレシーバーを特殊な引数として持つ関数であり、指定された型に該当するレシーバーだけがこの関数を実行できます。
レシーバーは、`fn`とメソッド名の間に独自の引数リストを記述します。

```v
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

上の出力結果:

```console
false
Bob needs to be 16 to register, but he only is 15.
true
16
```

上のコードのレシーバー`u`の型は`User`であることがわかります。
ここで`has_birthday()`関数のレシーバーに`mut`が付いていることにご注目ください。データを変更したい場合は`mut`の指定が必要です。
Vのコーディング慣習では、`self`や`this`といったレシーバー名は使いません。1文字のレシーバー名が推奨されます。

## 演習

1.`Person`型を対象として、未成年かどうかを調べるメソッドを作成しましょう。
2. `Animal`型について、毛が生えているかどうかを調べるメソッドを作成しましょう。
