# JSON

JavaScript对象表示法（JSON）是一种轻量级的数据交换格式，便于人们读写。此外，机器生成和/或解析也同样简单。
JSON完全不依赖于语言，因此它是理想的交换格式。

要了解更多关于JSON的信息，请访问: [json.org](http://json.org).

## 解析JSON

解析由另一个应用程序接收的JSON字符串，或在现有应用程序中生成的JSON字符串：

```go
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

## 生成JSON

创建用于通信或序列化的JSON字符串也很简单。我们在下面的示例中解码和编码：

```go
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

## 练习
1.比较您在最喜欢的语言和V中处理JSON的方式。
2.构建包含地址信息的“Address”结构。
3.使用“Address”结构对包含JSON格式的字符串进行解码和编码。
4.创建两个结构：`Address`和`User`，其中一个用户有许多地址。现在接收一个带有嵌套JSON的字符串，比如`'[{ "first_name": "Vitor", "last_name": "Oliveira", "hometown": "Rio de Janeiro", "addresses": [{ street_name: "Rua Princesa Isabel", city: "Rio de Janeiro", country: "Brazil" }] }]'`，对其进行解码和编码。