A File in V is an abstraction of any file object accessible by the program and is closely associated with IO library.

## Reading Files

Reading a file is an important task to tackle several different problems in computer science. In order to accomplish this task you can use the V native library `io` and `io/ioutil` as described below:

```go
import (
	"io"
	"io/ioutil"
)

fn main() {
	file_content, error_message := ioutil.ReadFile("./commerce-data.txt")

	if error_message != nil {
		eprintln(error_message)
	}

	println(string(file_content))
}
```

## Writing files

Writing files in V is similar to read files.

```go
import (
	"io/ioutil"
	"os"
)

fn main() {
	content := "random string in V"
	error_message := ioutil.WriteFile("/tmp/writing_a_file", content, 0644)

	if error_message != nil {
		eprintln(error_message)
	}

	file, error_message := os.Create("/tmp/writing_a_file_2")

	if error_message != nil {
		eprintln(error_message)
	}

	defer file.Close()
}
```
