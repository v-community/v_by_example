A File in V is an abstraction of any file object accessible by the program and is closely associated with `os` library.

## Reading Files

Reading a file is an important task to tackle several different problems in computer science. In order to accomplish this task you can use the V native library `os` as described below:

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

## Writing files

Writing files in V is similar to read files.

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

## Exercises

1. Write a V program to create a new file with content.
2. Write a V program to read 2 different files and display their content.
3. Read how the `os` library works in V and understand how you could use it.
4. Encode a nested json string and write a new file with the result.
