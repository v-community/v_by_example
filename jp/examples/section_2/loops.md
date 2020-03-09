---
version: 1.0.0
example_title: ループを書く
---

# ループを書く

V言語のループ構文は1種類しかありません。Goでもこのループ構文は広く使われています。

## `for`ループ

`for`ループは、何かを繰り返すための簡単かつ便利な方法を提供します。
値を変えながら同じコードを繰り返し実行するのも簡単です、
ループについて考えるために、ゲームをコンピュータ化するときに人物をある方向にX歩進め、次に別の方向にY歩進める状況を考えてみましょう。
たとえば「東に5歩進め」は以下のようにループで表現できます。

```v
for i := 0; i < 5; i++ {
    println('Walking one step')
}
```

Vの`for`ループは、さまざまな方法で構成できます。

- arrayやmapで`in`演算子を使う

```v
ages := [18, 25, 32, 43, 50]

for age in ages {
    println(age)
}
```

> 注意: 値はリードオンリーです。

- `for`ループで条件を指定する

これは、指定されたbool条件に応じてコードを繰り返し実行する制御フローを記述します。
条件部分を丸かっこで囲む必要はありませんが、波かっこ`{ }`は常に必要です。

```v
mut factorial := 1
mut counter := 1

for {
    counter++
    if counter > 5 {
       println(factorial)
       break
    }
    factorial = factorial * counter
}

println(counter)
```

上の出力結果

```console
120
6
```

`break`文を使う`for`ループは、次のように`for`の直後の条件を反転させると、他の言語の`while`文と同等になってもっと短く書けます。

```v
mut factorial := 1
mut counter := 1

for counter <= 5 {
    factorial = factorial * counter
    counter++
}
println(factorial)
println(counter)
```

Output

```console
120
6
```

- 伝統的なC言語風スタイル

```v
mut factorial := 1
mut counter := 1

for counter = 1; counter < 6; counter++ {
    factorial = factorial * counter
    if counter == 5 {
        print(factorial)
        continue
    }
    println(counter)
}
```

- 無限ループ

`for`ループは無限回繰り返すこともできます。

```go
for {
    println('foo')
}
```

## 演習

1. 自然数の最初の10個を表示するVプログラムを書きましょう。
2. 自然数の最初の10個の合計を求めるVプログラムを書きましょう。
3. arrayの中にあるintegerを表示し、それらの平均も表示するVプログラムを書きましょう。
4. キーボード入力から10個の数値を読み込み、それらの合計と平均を求めるVプログラムを書きましょう。
5. 渡されたintegerの立方数（3乗）を表示するVプログラムを書きましょう。
