## Testing

Testing in software development is a process that aims to evaluate the functionality of an application with an intent to find whether the code met the specified requirements or not as well as identifying the problems to ensure that the product has expected quality.

## Automated tests

Automated tests follow the process of testing the software using an automation tool to find the defects. In this process, programmers execute the test scripts and generate the test results automatically by using automation tools.

## Tests in V

In V, all test files have to be named with the following format: `*_test.v` and the functions should start with `test_*`.

```go
// sum.v
fn sum(a, b int) int {
    return a + b
}
```

```go
// test_sum.v
fn test_sum() {
    assert sum(2, 3) == 5
}
```

To execute the test, you should run `v test_sum.v`.

## Examples

1. Testing JSON structures:

```go
import json

fn test_encode_customer(){
    customer := Customer{ first_name: "Vitor", last_name: "Oliveira" }
    expected := '{ "first_name": "Vitor", "last_name": "Oliveira" }'

    encoded_json := json.encode(customer)
    assert encoded_json == expected
}
```

2. Testing files:

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
