# Looping Constructs

There's only one type of loop in V language, like Go which can be used in many ways.

## `for` loop

`for` loops offer a quick and easy way to do something repeatedly. 
They're handy, if you want to run the same code over and over again, each time with a different value.
You can think of a loop as a computerized version of the game where you tell someone to take X steps in one direction then Y steps in another; 
for example, the idea "Go five steps to the east" could be expressed this way as a loop:

```go
for i := 0; i < 5; i++ {
    println('Walking one step')
}
```

V has the `for` looping construct and the loop can be written in different ways:

1. `in` operator for array/map

```go
ages := [18, 25, 32, 43, 50]

for age in ages {
    println(age)
}
```

> Note: The value is read-only.

2. `for` loop with a condition

This is a control flow statement that allows code to be executed repeatedly based on a given Boolean condition.
There are no parentheses surrounding the condition, and the braces are always required.

```go
mut factorial := 1
mut counter := 1

for {
    counter++
    if counter > 5 {
       println(factorial)
       break
    }
    factorial = factorial * counter
}

println(counter)
```

Output

```
120
6
```

A for loop with a break statement can always be made shorter by placing the inverse condition right after for, making it equivalent with the while statement in other languages.

```go
mut factorial := 1
mut counter := 1

for counter <= 5 {
    factorial = factorial * counter
    counter++
}
println(factorial)
println(counter)
```

Output

```
120
6
```

3. Traditional C style

```go
mut factorial := 1
mut counter := 1

for counter = 1; counter < 6; counter++ {
    factorial = factorial * counter
    if counter == 5 {
        print(factorial)
        continue
    }
    println(counter)
}
```

4. Infinite Loop

`for` loop can also be infinite

```go
for {
    println('foo')
}
```

## Exercises

1. Write a V program to display the first 10 natural numbers.
2. Write a V program to find the sum of first 10 natural numbers.
3. Write a V program to print the integers inside an array and also print their mean.
4. Write a V program to read 10 numbers from keyboard and find their sum and average.
5. Write a V program to display the cube of the number upto given an integer.
