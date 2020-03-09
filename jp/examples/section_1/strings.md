---
version: 1.0.0
example_title: 文字列
---

# 文字列

Vでは文字列の定義も`:=`演算子で行えます。他の変数と同様、文字列もデフォルトでイミュータブルです。文字列を（リテラルとして）表現するときには`""`や`''`のどちらでも使えます。`vfmt`で書式を整えると、文字列リテラルを囲む`""`は、文字列の中に`'`を含んでいなければすべて`''`に変換されます。

```v
name := 'Bob'
println(name)       // Bob
println(name.len)   // 3
```

文字列の長さは`.len`で取得できます。

## 式展開（interpolation）

文字列の中で`$`に続けて変数名を書くと、変数の値を文字列に展開できます。

```v
name:= 'Bob'
println('Hello $name!')     // Hello Bob!
```

変数よりも複雑な式も、`${}`構文で式展開できます。

```v
struct User {
    name string
    age int
}
bob := User {
    name: 'Bob'
    age: 17
}
println('Say Hello to a new User: ${bob.name}, ${bob.age}')
// Say Hello to new User: Bob, 17
println('${bob.name}s age is higher or equal to 18: ${bob.age >= 18}')
// 0 <=> number representation for false
```

## 文字列の結合

文字列は`+`演算子で結合できます。

```v
text := 'Hello'
concatenated_text := text + ' World!'
println(text)                   // Hello
println(text + ' World!')       // Hello World!
println(concatenated_text)      // Hello World!
```

文字列の後ろに別の文字列を結合する操作は`+=`演算子でも行えます。文字列はデフォルトでイミュータブルなので、この操作は`mut`と宣言されている場合にのみ可能です。

```v
mut hello := 'Hello '
hello += 'from V!'      // helloに保存されている文字列に'from V!'を追加する
println(hello)          // Hello from V!
```

Vの文字データはUTF-8でエンコードされます。また、文字データの実体はリードオンリーのバイト配列です。これによって文字列のスライシングが可能になります。つまり、単一文字のリテラルにアクセスすることも、文字列変数のスライスにアクセスすることもできます。

```v
robert := 'Robert'
bert := robert[2..robert.len]                                 // bert
rob := robert[0..3]                                           // Rob
println('The persons of interest are: $robert, $bert, $rob')  // The persons of interest are: Robert, bert, Rob
```

### 注意

`some_string[開始位置..終了位置]`という構文の`終了位置`は、**終了位置そのものは含みません**（not inclusive）。

Vのどの演算子についても、両辺に同じ型の値が必ず存在しなければなりません。以下のコードは、`age`が`int`型なのでコンパイルされません。

```v
age := 25
println('age = ' + age) // cannot convert `int` to `string`
```

つまり、`.str()`で文字列に変換するか、式展開を使う必要があります。Vでは式展開が推奨されています。

```v
age := 25
println('age = ' + age.str())   // age = 25
println('age = $age')           // age = 25 -- 推奨
```

文字リテラルを定義するには` `` `を用います。raw stringの冒頭に`r`を付けるとエスケープされなくなります。

```v
hello := 'Hello\nWorld'
println(hello)                  // Hello
                                // World
raw_hello := r'Hello\nWorld'
println(raw_hello)              // Hello\nWorld
```
