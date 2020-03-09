---
version: 1.0.0
example_title: hello world
---

# 書式付き出力（formatted print）

printによる出力は、さまざまなI/Oストリーム関数で用いられます。以下の違いについて知っておく必要があります。

- `print`: テキストを出力ストリームに出力します（出力後は改行しません）

- `println`: `print`と同じですが、出力後、自動的に改行される点が異なります。

- `eprint`: `print`と同じですが、出力先はエラー用ストリーム（stderr）です。

- `eprintln`: `println`と同じですが、出力先はエラー用ストリーム（stderr）です。

- `panic`: 出力後、プログラムを終了します。

```v
print('Hello World')
print('Hello V')
```

上は`Hello WorldHello V`を出力します。

1行目の出力後に次の行を改行したい場合は、`\n`を使います。

```v
print('Hello World \n')
print('Hello V ')
```

`\n`を書きたくないのであれば、`println`を使いましょう。

## コメント

Vでは単一行コメント`//`と複数行コメント`/* */`を両方サポートしています。
コメントは、コードの動作を他のユーザーに知らせるドキュメントを書くために用いるべきです。後で有効にしなければならないコードを一時的にコメントアウトするのにも使えます。

```v
// This is a single line comment

/* This is a
*  multi-line comment
* /* This could be nested as well*/
*/
```

## 演習

`hello.v`のコードにあるコメントを解除して、何が起きるかを観察しましょう。
