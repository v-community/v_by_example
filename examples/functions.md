# Functions

A function is a block of organized, reusable code that is used to perform a single, related action. Functions provide better modularity for your application and a high degree of code reusing. 

Ideally you should consider using the [single responsibility principle](https://en.wikipedia.org/wiki/Single_responsibility_principle) (SOLID) which states that every module or function should have responsibility over a single part of the functionality provided by the software to keep your code maintainable.

```v
fn main() {
	println(sum(77, 33))
}

fn sum(x, y int) int {
	return x + y
}
```

Note that the type comes after the argument's name.

```v
fn main() {
	println(full_name("Vitor", "Oliveira"))
}

fn full_name(first_name, last_name string) string {
	return x + y
}
```

## Exercises

1. Write a V program to find the square of any number using the function.
2. Write a V program to check a given number is even or odd using the function.
3. Write a V program to convert decimal number to binary number using the function.
4. Write a V program to check whether a number is a prime number or not using the function. 
5. Write a V program to get the largest element of an array using the function.
