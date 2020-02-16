---
version: 1.0.0
example_title: 文件操作
---

# 文件操作

V中的文件是程序可访问的任何文件对象的抽象，与`os`库密切相关。

## 读取文件

读取文件是解决计算机科学中几个不同问题的重要任务。为了完成此任务，您可以使用V native library`os`，如下所述：

```go
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

## 写入文件

在V中写入文件类似于读取文件。

```go
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

## 练习
1.编写一个V程序来创建一个包含内容的新文件。
2.编写一个V程序来读取两个不同的文件并显示其内容。
3.阅读V中“os”库的工作原理，了解如何使用它。
4.编码一个嵌套的json字符串并用结果编写一个新文件。
