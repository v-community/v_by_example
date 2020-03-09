---
version: 1.0.0
example_title: 配列
---

# 配列

配列（array）は、メモリ上の連続した位置に保存された項目のコレクションです。配列は、型が同じであるオブジェクトのグループを保存するよう設計された、集約的なデータ構造であり、オブジェクトのシーケンスを保存したりアクセスしたりする場合に最も効率の高いデータ構造です。

## 配列を宣言する方法

**要素の型がintegerの配列を1つ作成する:**

```v
mut ages := [18, 25, 37]

println(ages)
```

上の出力結果:

```console
[18, 25, 37]
```

**要素の型がstringaの配列を1つ作成する:**

```v
mut users := ['vbrazo', 'donnisnoni95', 'Delta456']

println(users)
```

上の出力結果:

```console
['vbrazo', 'donnisnoni95', 'Delta456']
```

> 注意: どの要素もすべて同じ型でなければなりません。以下はコンパイルされません。

```go
mut users := ['vbrazo', 'donnisnoni95', 'Delta456', 0]
```

上の出力結果:

```
~/main.v:2:43: bad array element type `int` instead of `string`
```

## 空の配列を作成する

宣言で`[]`に続けてデータ型を書くことで、空の配列を1つ作成できます。

```v
mut names := []string
mut numbers := []int
```

## 配列の要素にアクセスする

```v
mut users := ['vbrazo', 'donnisnoni95', 'Delta456']

println(users[0])
println(users[2])
println(users[1])
```

上の出力結果:

```console
vbrazo
Delta456
donnisnoni95
```

## 配列の末尾に値を追加する

`<<`は、配列の末尾に値をひとつ追加する演算子です。

```v
mut ages := [18]
ages << 47

println(ages)
```

上の出力結果:

```console
[18, 47]
```

値の代わりに配列を追加することもできます。

```v
mut ages := [18]
ages << [47, 49]

println(ages)
```

上の出力結果

```console
[18, 47, 49]
```

## 配列の長さ

`.len`メソッドは配列の長さ（つまり要素の数）を返します。

```v
mut names := ['Thiago', 'John']

println(names.len)
```

上の出力結果

```console
2
```

## `in`演算子

`in`は、要素が配列にあるかどうかをチェックします。

```v
mut names := ['Thiago', 'Alex', 'Joe']

println('Vitor' in names)
println('Thiago' in names)
```

上の出力結果

```console
false
true
```

## 配列をスライスする

Vでは配列を簡単にスライス（切り出し）できます。`slice ()`メソッドを呼ばなくても、Vのデフォルトのスライシング機能だけで配列をスライスできます。
構文は`配列[開始値..終了値]`のようになります。

```v
animals := ['lion', 'goose', 'chicken', 'turkey', 'tiger']
poultry := animals[1..4]
println(poultry) // ["goose", "chicken", "turkey"]
```

スライスをインデックスの冒頭から開始したい場合、開始値に`0`を置かずに`配列[..終了値]`と書くことも、終了値に`-1`を置かずに`配列[開始値..]`と書くこともできます。

```v
x := ['h', 'e', 'l', 'l', 'o']
y := x[..x.len-1]
z := x[1..]
println(y) // ['h', 'e', 'l', 'l']
println(z) // ['e', 'l', 'l', 'o']
```

## 演習

1. 要素をいくつか渡すと配列に保存して出力するVプログラムを書きましょう。
2. 配列のn番目の値を読み取って逆順で表示するVプログラムを書きましょう。
3. 配列のすべての要素の合計を求めるVプログラムを書きましょう。
4. ある配列の要素を別の配列にコピーするVプログラムを書きましょう。
5. 配列の中で重複している要素の個数を数えるVプログラムを書きましょう。
