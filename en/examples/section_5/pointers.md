# Pointers

V pointers are similar to Go pointers and C++ references. For example, an Address struct definition would look like this:

```go
struct Address<Object> {
    uuid Object
    shipping_address &Address
    billing_address &Address
}
```
