# JSON操作

JSON(JavaScript Object Notation)は、人間にとって読み書きしやすい軽量なデータ交換フォーマットです。コンピュータにとっても生成やパースが容易です。JSONは特定の言語にまったく依存しないので、理想的なデータ交換フォーマットです。

JSONについて詳しくは、[json.org](http://json.org)をご覧ください。

## JSONをパースする

他のアプリケーションで受け取ったり既存のアプリケーションで生成したJSON文字列をパースするには以下のようにします。

```v
import json

struct Customer {
    first_name    string
    last_name     string
    hometown      string
}

fn main() {
    customers_string := '[{ "first_name": "Vitor", "last_name": "Oliveira", "hometown": "Rio de Janeiro" }, { "first_name": "Don", "last_name": "Nisnoni", "hometown": "Kupang" }]'
    customers := json.decode([]Customer, customers_string) or {
        eprintln('Failed to parse json')
        return
    }

    // Print the list of customers
    for customer in customers {
        println('$customer.first_name $customer.last_name: $customer.hometown')
    }
}
```

## JSONを生成する

通信やシリアライズで用いるJSON文字列は簡単に生成できます。以下のようにデコード/エンコードできます。

```v
import json

struct Customer {
    first_name    string
    last_name     string
    hometown      string
}

fn main() {
    customer_string := '[{ "first_name": "Vitor", "last_name": "Oliveira", "hometown": "Rio de Janeiro"}]'

    customer := json.decode([]Customer, customer_string) or {
        eprintln('Failed to parse json')
        return
    }

    encoded_json := json.encode(customer)

    println(encoded_json)
}
```

## 演習

1. 普段使っている言語とVでJSONの扱いがどう違うかを比較してみましょう。
2. 住所情報を持たせるための`Address`構造体を作りましょう。
3. `Address`構造体を用いて、JSON形式を含む文字列をデコード/エンコードしましょう。
4. 2つの構造体`Address`と`User`を作りましょう。1人のuserは複数のaddressを持ちます。続いて、`'[{ "first_name": "Vitor", "last_name": "Oliveira", "hometown": "Rio de Janeiro", "addresses": [{ street_name: "Rua Princesa Isabel", city: "Rio de Janeiro", country: "Brazil" }] }]'`のようなネストしたJSON文字列を受け取ってデコード/エンコードしましょう。
