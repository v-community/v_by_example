# Functions

A function is a block of organized, reusable code that is used to perform a single, related action. Functions provide better modularity for your application and a high degree of code reusing. 

Ideally you should consider using the [single responsibility principle](https://en.wikipedia.org/wiki/Single_responsibility_principle) (SOLID) which states that every module or function should have responsibility over a single part of the functionality provided by the software to keep your code maintainable.

```go
fn main() {
	println(sum(77, 33))
}

fn sum(x, y int) int {
	return x + y
}
```

Note that the type comes after the argument's name.

```go
fn main() {
	println(full_name("Vitor", "Oliveira"))
}

fn full_name(first_name, last_name string) string {
	return first_name + last_name
}
```

## Variadic Functions

Functions can also be variadic i.e. accept infinite number of arguments. They are **not** arrays and cannot be returned.

```go
fn main() {

	foo("V", "is", "the", "best", "lang" , "ever")	
}

fn foo(test ...string) {
	println(test)
}
```

Output

```go
V
is
the
best
lang
ever
```

## Multi-Return Functions

Similar to Go, functions in V can also return more than one and with different type.

```go
fn main() {	
	name, age := student("Tom", 15)
	println(name, age)

}

fn student(name string, age int) string, int {
	return name, age
}
```

Output
```go 
Tom , 15
```

## Exercises

1. Write a V program to find the square of any number using the function.
2. Write a V program to check a given number is even or odd using the function.
3. Write a V program to convert decimal number to binary number using the function.
4. Write a V program to check whether a number is a prime number or not using the function. 
5. Write a V program to get the largest element of an array using the function.
