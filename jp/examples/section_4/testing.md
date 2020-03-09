---
version: 1.0.0
example_title: テストの書き方
---

# テストの書き方

ソフトウェア開発におけるテストは、コードが特定の要求を満たしていることを確認してアプリケーションが意図したとおりに動作するかどうかを評価したり、製品の品質が期待に沿っているかどうかを調べるために問題点を特定するプロセスです。

## テストの自動化

自動化されたテストは、問題点を検出する自動化ツールを用いてソフトウェアをテストするプロセスです。プログラマーはテストスクリプトを実行し、自動化ツールを用いてテスト結果を自動生成します。

## Vのテスト

Vのテストファイルはすべて`*_test.v`というファイル形式に揃え、関数名は必ず`test_*`の形式にしなければなりません。

```v
// sum.v（sum/サブフォルダ内）
module sum

pub fn sum(a, b int) int {
    return a + b
}
```

```v
// sum_test.v
import sum

fn test_sum() {
    assert sum.sum(2, 3) == 5
     // assert sum.sum(2, 3) == 777 // => sum_test.v:6: FAILED assertion
}
```

上のテストを実行するには、 `v test_sum.v`を実行します

### テストコードの例

1. JSON構造のテスト

```go
import json

fn test_encode_customer(){
    customer := Customer{ first_name: "Vitor", last_name: "Oliveira" }
    expected := '{ "first_name": "Vitor", "last_name": "Oliveira" }'

    encoded_json := json.encode(customer)
    assert encoded_json == expected
}
```

2. ファイルのテスト

```go
import os

fn test_file_creation() {
    file_name := './new_file.txt'
    content := 'text'

    os.write_file(file_name, content)
    assert content.len == os.file_size(file_name)

    os.rm(file_name)
}
```
