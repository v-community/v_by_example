# JSON

JavaScript Object Notation (JSON) is a lightweight data-interchange format that is easy for humans to read and write. Furthermore, equally simple for machines to generate and/or parse. 
JSON is completely language agnostic and that's why it's the ideal interchange format.

To read more about JSON visit: [json.org](http://json.org).

## Parsing JSON

To parse a JSON string received by another application or generated within your existing application:

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

## Generating JSON

Creating a JSON string for communication or serialization is just as simple. We decode and encode in the example below:

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

## Exercises

1. Compare how you handle JSON in your favorite language and V.
2. Build an `Address` struct that contains address information.
3. Use the `Address` struct to decode and encode a string that contains JSON format.
4. Create 2 structs: `Address` and `User` where a user has many addresses. Now receive a string with a nested JSON like `'[{ "first_name": "Vitor", "last_name": "Oliveira", "hometown": "Rio de Janeiro", "addresses": [{ street_name: "Rua Princesa Isabel", city: "Rio de Janeiro", country: "Brazil" }] }]'`, decode and encode it.
