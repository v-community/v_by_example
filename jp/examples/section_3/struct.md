---
version: 1.0.0
example_title: 構造体
---

# 構造体

構造体（struct）は、さまざまなデータ型（レコード）を組み合わせて宣言します。構造体は、さまざまな変数のリストをメモリの1つのブロックの中でひとつの名前で物理的にグループ化することで、単一のポインタでさまざまな変数にアクセスしたり、同じアドレスを返す名前で宣言された構造体にアクセスしたりできます。

[オブジェクト指向プログラミング](https://ja.wikipedia.org/wiki/%E3%82%AA%E3%83%96%E3%82%B8%E3%82%A7%E3%82%AF%E3%83%88%E6%8C%87%E5%90%91%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9F%E3%83%B3%E3%82%B0)方面から来た方であれば`class`と見なすこともできなくはありませんが、構造体はより制約が多くなっています。

```v
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

> 注意: 構造体は（ヒープではなく）スタックに配置されます。

構造体のインスタンスを新たに作成するときには、各フィールドをカンマ`,`で区切ることもできます。これはワンライナーでインスタンスを作成するときに便利です。

```v
user := User { name: "V developers", email: "developers@vlang.io", country: "Canada" }
```

## `&`プレフィックス

構造体はヒープに配置して参照することもできます。これを行うには、以下のように`&`プレフィックスを追加します。

```v
user := &User{"V developers", "developers@vlang.io", "Canada"}
println(user.name)
```

変数`user`の型は`&User`になり、`User`への参照となります。

## アクセス指定子

構造体のフィールドはデフォルトで「private」（モジュールの外からアクセスできない）かつ「イミュータブル」です。これは`pub`や`mut`アクセス指定子で変更できます。

```v
struct User {
    email string   // privateかつイミュータブル（デフォルト）
}
```

`mut:`を指定すると「privateかつミュータブル」にできます。

```v
struct User {
    email string
mut:
    first_name string  // privateかつミュータブル
    last_name string   // （1つのアクセス指定子で複数のフィールドをまとめて指定できる）
}
```

`pub:`を指定すると「publicかつイミュータブル」（リードオンリー）にできます。

```v
struct User {
    email string
mut:
    first_name string
    last_name string
pub:
    sin_number int     // publicかつイミュータブル（リードオンリー）
}
```

`pub mut:`を指定すると「public」かつ「**親モジュール**の中でのみミュータブル」になります。

```v
struct User {
   email string
mut:
   first_name string
   last_name string
pub:
   sin_number int
pub mut:
   phone int    // publicだが親モジュールでのみミュータブル
}
```

`__global:`を指定すると、親モジュールの中か外かを問わず「publicかつミュータブル」になります。

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
    address_1 string    // 親モジュールの中でも外でもpublicかつミュータブル
    address_2 string    // （利用を勧めたくないので'__'で始めている）
    city string
    country string
    zip     string
}
```

## 命名のルール

- `struct`の名前は常に大文字で始めること。
- 構造体の中の変数（フィールド）については[`Snake_Case`](https://github.com/v-community/v_by_example/blob/master/en/examples/section_1/variables.md#naming-rules)にする。

> 訳注: フィールドのスネークケース縛りは近々変更される可能性あり。

## 演習

1. `User`の情報を保存して表示する構造体を作成しましょう。
2. `x`フィールドと`y`フィールドを持つ`Point`構造体を作成し、フィールドをそれぞれprivateとpublicにしましょう。
