# Conditional Statements

## The `if` statement

An `if` statement is a programming conditional statement that, if proved true, executes the code given in the block. Below is a general example of an if statement in V:

```go
john_height := 100
maria_height := 178

if john_height < maria_height {
    println('$john_height is larger than $maria_height')
}
```

In the above code, `fn println()` will only execute when the condition is true else no statement would be printed.

## The `else` statement

An `else` statement is a programming conditional statement in which when `if` evaluates to false then the code in else block executes.

```go
joey_age := 12
kevin_age := 15

if joey_age > kevin_age {
    println("Joey is older")
} else {
    println("Kevin is older")
}
```

In this example, the block in else will execute because the condition in `if` evaluates to false.

## The `else if` statement

The `if...else` statement executes two different codes depending upon whether the test expression is `true` or `false`. Sometimes, a choice has to be made from more than 2 possibilities. The `if...else if...else` ladder allows you to check between multiple test expressions and execute different statements.

```go
tom_age := 20
ashia_age := 38

if tom_age < ashia_age {
    println('$tom_age < $ashia_age')
} else if tom_age > ashia_age {
    println('$tom_age > $ashia_age')
} else {
    println('$tom_age == $ashia_age')
}
```

It's possible to include an `if...else` statement inside the body of another `if...else` statement.

```go
tom_age := 20
ashia_age := 38

if tom_age < ashia_age {
    if tom_age < 18 {
        println('tom_age < 18 and younger than Ashia.')
    } else {
        println('tom_age >= 18 and younger than Ashia.')
    }
} else if tom_age > ashia_age {
    println('$tom_age > $ashia_age')
} else {
    println('$tom_age == $ashia_age')
}
```

Output

```bash
tom_age >= 18 and younger than Ashia.
```

There are no parentheses surrounding the condition, and the braces are always required.

`if` can also be used as an expression:

```go
tom_age := 20
ashia_age := 38

s := if tom_age < ashia_age {
    'Tom is the youngest'
} else {
    'Ashia is the youngest'
}

print(s)
```

Output

```bash
Tom is the youngest
```

## Exercises

1. Write a V program to accept two integers and check whether they are equal or not.
2. Write a V program to check whether a given number is even or odd.
3. Write a V program to check whether a given number is positive or negative.
4. Write a V program to find whether a given year is a leap year or not.
