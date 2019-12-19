# Pointers

In general, V references are similar to Go pointers and C++ references. For example, a tree structure definition would look like this:

```go
struct Address<Object> {
	uuid  Object
	shipping_address  &Address
	billing_address &Address
}
```
