# ファイル操作

Vでは、ファイルを「プログラムからアクセス可能な任意のファイルオブジェクトの抽象化」としており、`os`ライブラリと深く関連しています。

## ファイルの読み込み

コンピュータサイエンスでは、ファイルの読み込みもさまざまな問題に取り組むうえで重要なタスクです。Vではネイティブの`os`ライブラリで以下のように操作できます。

```v
import os

fn main() {
    mut fp := flag.new_flag_parser(os.args)
    generator := fp.string('generator', '', 'generator name')
    method := fp.string('method', '', 'generator method name')
    path := './data/$generator/$method'

    if os.file_exists(path) {
        print_generator_sample(path)
    } else {
        println('File does not exist')
        return
    }
}

fn print_generator_sample(path string) {
    contents := os.read_file(path.trim_space()) or {
        println('Failed to open $path')
        return
    }

    lines := contents.split_into_lines()
    length := lines.len

    print_random_element(lines, length)
}

fn print_random_element(lines []string, length int) {
    rand.seed(time.now().uni)

    println(lines[rand.next(length-1)])
}
```

## ファイルへの書き込み

Vではファイルの書き込みも読み出しと似ています。

```v
import os

fn main() {
    path := './data/file.txt'
    text := 'Full text description.'

    if contents := os.write_file(path, text) or {
        println('Failed while creating file')
        return
    }

    content_lines = read_file(path)
    print(content_lines)
}

fn read_file(path string) {
    contents := os.read_file(path.trim_space()) or {
        println('Failed to open $path')
        return
    }

    return contents.split_into_lines()
}
```

## 演習

1. 中身のあるファイルを1つ作成するVプログラムを書きましょう。
2. 2つのファイルを読み込んでその中身を表示するVプログラムを書きましょう。
3. Vの`os`ライブラリを読んで、動作や利用方法を理解してみましょう。
4. ネストしたJSON文字列をエンコードして結果を新しいファイルに書き出してみましょう。
