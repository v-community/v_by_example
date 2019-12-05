# If statement

## The `if` statement

An `if` statement is a programming conditional statement that, if proved true, executes the code given in the block. Below is a general example of an if statement in V:

```go
john_height := 100
maria_height := 178

if john_height < maria_height {
    println("Maria is taller than John")
}
```

In the above code, `println()` will only execute when the condition is true.
There are no parentheses needed for surrounding the condition, and the braces are always required.

## The `else` statement

An `else` statement is a programming conditional statement in which when `if` evaluates to false then the code in `else` block executes.

```go
joey_age := 12
kevin_age := 15

if joey_age > kevin_age {
    println("Joey is older")
} else {
    println("Kevin is older")
}
```

In this example, the code inside the `else` block will execute because the condition in `if` evaluates to `false`.

## The `else if` statement

The `if...else` statement executes two different codes depending upon whether the test expression is `true` or `false`. Sometimes, a choice has to be made from more than 2 possibilities. The `if...else if...else` ladder allows you to check between multiple test expressions and execute different statements.

```go
tom_age := 20
ashia_age := 38

if tom_age < ashia_age {
    println("Tom is younger than Ashia")
} else if tom_age > ashia_age {
    println("Tom is older than Ashia")
} else {
    println("Tom and Ashia are the same age")
}
```

Output

```
Tom is younger than Asia
```

## Nested `if..else` statement

It is always a good practice to nest `if...else` statements which means you can use one `if`, `else` or `else...if` statement inside another `if` or `else...if` statement.

```go
tom_age := 20
ashia_age := 38

if tom_age < ashia_age {
    if tom_age < 18 {
        println("tom_age < 18 and younger than Ashia.")
    } else {
        println("tom_age >= 18 and younger than Ashia.")
    }
} else if tom_age > ashia_age {
    println("$tom_age > $ashia_age")
} else {
    println("$tom_age == $ashia_age")
}
```

Output

```
tom_age >= 18 and younger than Ashia.
```

## Using `if..else` as expression

The `if..else` can also be used as an expression:

```go
tom_age := 20
ashia_age := 38

s := if tom_age < ashia_age {
    "Tom is the youngest"
} else {
    "Ashia is the youngest"
}

print(s)
```

Output

```
Tom is the youngest
```

## Exercises

1. Write a V program to accept two integers and check whether they are equal or not.
2. Write a V program to check whether a given number is even or odd.
3. Write a V program to check whether a given number is positive or negative.
4. Write a V program to find whether a given year is a leap year or not.
