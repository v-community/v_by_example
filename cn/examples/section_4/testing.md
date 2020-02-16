---
version: 1.0.0
example_title: 测试
---

# 测试

软件开发中的测试是一个过程，其目的是评估应用程序的功能，以确定代码是否满足指定的要求，并确定问题，以确保产品具有预期的质量。

## 自动化测试

自动化测试遵循使用自动化工具测试软件以发现缺陷的过程。在这个过程中，程序员使用自动化工具执行测试脚本并自动生成测试结果。

## V中的测试

在V中，所有的测试文件都必须使用以下格式命名：`*u test.V`并且函数应该以`test`开头。

```go
// sum.v in subfolder sum
module sum

pub fn sum(a, b int) int {
    return a + b
}
```

```go
// sum_test.v
import sum

fn test_sum() {
    assert sum.sum(2, 3) == 5
     // assert sum.sum(2, 3) == 777 // => sum_test.v:6: FAILED assertion
}
```

要执行测试，应执行`v test_sum.v`。

### 练习

1. 测试JSON结构：

```go
import json

fn test_encode_customer(){
    customer := Customer{ first_name: "Vitor", last_name: "Oliveira" }
    expected := '{ "first_name": "Vitor", "last_name": "Oliveira" }'

    encoded_json := json.encode(customer)
    assert encoded_json == expected
}
```

2. 测试文件：

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
