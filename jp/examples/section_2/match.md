---
version: 1.0.0
example_title: マッチ
---

# マッチ

## `match`文

`match`文は`if - else`文のショートハンドです。
入力がマッチすると、選択肢の中で最初にマッチした文ブロックを実行し、最後の式を返します。
`else`のブロックは、他の選択肢とマッチしなかった場合に実行されます。

```v
num := 1
match num % 2 == 0  {
    true { print('The input number is even.') }
    else { print('The input number is odd.') }
}
```

`match`を使うと、条件に応じたさまざまな値で変数を初期化することもできます。

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

コード例:

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

### enum

`.項目名`構文を用いることで、選択肢でenum`の値（`enum`の項目名）とマッチさせることもできます。

```v
enum Animal {
    cat
    dog
    goldfish
    pig
}

fn makes_miau(a Animal) bool {
    return match a {
        .cat { true }  // enumの`cat`
        else { false }
    }
}

fn is_land_creature(a Animal) bool {
    return match a {
        .cat { true } // enumの`cat`
        .dog { true } // enumの`dog`
        .pig { true } // enumの`pig`
        else {
            false
        }
    }
}

// 以下の書き方も可能
fn is_land_creature_alt(a Animal) bool {
    return match a {
        .goldfish { false } // enumの`goldfish`
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

### Exercises

1. 1から50までのすべての偶数の配列を作成するVプログラムを書きましょう。
2. 数値を持つ配列を渡すと、その中の最大値を返すVプログラムを書きましょう。
3. color（enum）がredかblueかを調べるVプログラムを書きましょう。
