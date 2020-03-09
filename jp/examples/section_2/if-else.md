---
version: 1.0.0
example_title: if文
---

# if文

## `if`文

`if`文は、プログラミングにおける条件を記述する文であり、trueの場合は指定のブロック内のコードを実行します。以下はVにおける`if`文の一般的なコード例です。

```v
john_height := 100
maria_height := 178

if john_height < maria_height {
    println("Maria is taller than John")
}
```

上のコードの`println()`は、条件がtrueの場合にのみ実行されます。
条件部分を丸かっこで囲む必要はありません。逆に波かっこ`{ }`は常に必要です。

## `else`文

`else`文はプログラミングにおける条件を記述する文であり、`if`がfalseと評価された場合に`else`ブロックのコードを実行します。

```v
joey_age := 12
kevin_age := 15

if joey_age > kevin_age {
    println("Joey is older")
} else {
    println("Kevin is older")
}
```

上のコード例では、`else`ブロック内のコードが実行されます（`if`は`false`と評価されるため）。

## `else if`文

`if...else`文は、評価式が`true`か`false`かに応じて異なるコードを実行します。しかし可能性のある選択肢が3つ以上になることもあります。`if...else if...else`のように重ねることで、複数の評価式をチェックして実行する文を切り替えることができます。

```v
tom_age := 20
ashia_age := 38

if tom_age < ashia_age {
    println("Tom is younger than Ashia")
} else if tom_age > ashia_age {
    println("Tom is older than Ashia")
} else {
    println("Tom and Ashia are the same age")
}
```

上の出力結果:

```console
Tom is younger than Asia
```

## `if..else`文のネスト

`if...else`文をネストすることで、別の`if`文や`else...if`文の中で`if`文や`else`文や`else...if`文を使えます。ネストは1回に留めるのがよい習慣です。

```v
tom_age := 20
ashia_age := 38

if tom_age < ashia_age {
    if tom_age < 18 {
        println("tom_age < 18 and younger than Ashia.")
    } else {
        println("tom_age >= 18 and younger than Ashia.")
    }
} else if tom_age > ashia_age {
    println("$tom_age > $ashia_age")
} else {
    println("$tom_age == $ashia_age")
}
```

上の出力結果:

```console
tom_age >= 18 and younger than Ashia.
```

## `if..else`を式として扱う

`if..else`は式としても扱えます。

```v
tom_age := 20
ashia_age := 38

s := if tom_age < ashia_age {
    "Tom is the youngest"
} else {
    "Ashia is the youngest"
}

print(s)
```

上の出力結果:

```console
Tom is the youngest
```

## 演習

1. integerを2つ受け取り、両者が等しいかどうかをチェックするVプログラムを書きましょう。
2. 渡した数値が奇数か偶数かをチェックするVプログラムを書きましょう。
3. 渡した数値が正か負かをチェックするVプログラムを書きましょう。
4. 渡した年がうるう年かどうかをチェックするVプログラムを書きましょう。
