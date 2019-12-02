A File in V is an abstraction of any file object accessible by the program and is closely associated with `os` library.

## Reading Files

Reading a file is an important task to tackle several different problems in computer science. In order to accomplish this task you can use the V native library `os` as described below:

```v
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

```v
fn main() {
    path := './data/file.txt'
    text := 'Full text description.'

    if os.write_file(path, text) {
        print_generator_sample(path)
    } else {
        println('Failed while creating file')
        return
    }
}

fn print_generator_sample(path string) {
    contents := os.read_file(path.trim_space()) or {
        println('Failed to open $path')
        return
    }

    println(contents.split_into_lines())
}
```
