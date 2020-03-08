# 演算子

Vでサポートされる演算子は以下のとおりです。

## 基本演算子

- `+`（加算）int、float、stringが対象

- `-`（減算）intとfloatが対象

- `*`（乗算）intとfloatが対象

- `/`（除算）intとfloatが対象

- `%`（剰余）intが対象

- `=`（代入）値の変更に用いる

- `:=`（値の初期化）

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

上の出力結果

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

> 注意: Vは他の言語と異なり、floatでは剰余`%`を使えません。

## 比較演算子

- `>`: より大きい

- `<`: より小さい

- `==`: 等しい

- `>=`: より大きいか等しい

- `<=`: より小さいか等しい

- `!=`: 等しくない

## bool演算

- `&&`: 論理AND演算子

- `||`: 論理OR演算子

- `!`: 論理NOT演算子

## ビット演算子

- `<<`: 左ビットシフト

- `>>`: 右ビットシフト

- `&`: ビットAND

- `|`: ビットOR

- `^`: ビットXOR

## 代入演算子

- `+=`: `foo = foo + var`と同じ

- `-=`: `foo = foo - var`と同じ

- `*=`: `foo = foo * var`と同じ

- `/=`: `foo = foo / var`と同じ

- `&=`: `foo = foo & var`と同じ

- `|=`: `foo = foo | var`と同じ

- `>>=`: `foo = foo >> var`と同じ

- `<<=`: `foo = foo << var`と同じ

## 特殊演算子

- `in`: メンバーシップで用いる（存在を表す）

- `none`: optionalで用いる
