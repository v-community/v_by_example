# Functions

A function is a block of organized, reusable code that is used to perform a single, related action. Functions provide better modularity for your application and a high degree of code reusing. 

Ideally you should consider using the single responsibility principle which is a computer programming principle that states that every module, or function should have responsibility over a single part of the functionality provided by the software.

```go
fn main() {
	println(sum(77, 33))
}

fn sum(x, y int) int {
	return x + y
}
```

Note that the type comes after the argument's name.
