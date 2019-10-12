# Conditional Statements

## If statement

An `if` statement is a programming conditional statement that, if proved true, performs a function or displays information. Below is a general example of an if statement in V:

```go
john_height := 100
maria_height := 178

if john_height < maria_height {
	println('$john_height < $maria_height')
} else {
	println('$john_height > $maria_height')
}
```

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

It is possible to include an `if...else` statement inside the body of another `if...else` statement.

```go
tom_age := 20
ashia_age := 38

if tom_age < ashia_age {
  if tom_age < 18 {
	println('tom_age < 18 and younger than Ashia.')
  } else {
	println('tom_age > 18 and older than Ashia.')
  }
} else {
	println('$tom_age == $ashia_age')
	println('Tom and Ashia have the same age.')
}
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

print(s) // 'Tom is the youngest'
```

## Exercises

1. Write a V program to accept two integers and check whether they are equal or not.
2. Write a V program to check whether a given number is even or odd.
3. Write a V program to check whether a given number is positive or negative.
4. Write a V program to find whether a given year is a leap year or not.

## For

Loops offer a quick and easy way to do something repeatedly. They're handy, if you want to run the same code over and over again, each time with a different value. You can think of a loop as a computerized version of the game where you tell someone to take X steps in one direction then Y steps in another; for example, the idea "Go five steps to the east" could be expressed this way as a loop:

```go
for i := 0; i < 5; i++ {
  println('Walking one step');
}
```

V has the `for` looping construct and the loop can be written in different ways:

1. `in` operator

```go
ages := [18, 25, 32, 43, 50]
for age in ages {
	println(age)
}
```

Note, that the value is read-only.

2. `while` loop form

A while loop is a control flow statement that allows code to be executed repeatedly based on a given Boolean condition. There are no parentheses surrounding the condition, and the braces are always required.

```go
mut factorial := 1
mut counter := 1
for {
	counter++
  	factorial=factorial*counter
	if counter >= 5 {
    	print(factorial)
		break
	}
}
println(counter) // "100"
```

3. `for` with the traditional C style

```go
mut factorial := 1
mut counter := 1
for i := 0; i < 5; i++ {
	factorial=factorial*counter
	if i == 6 {
    	print(factorial)
		continue
	}
	println(i)
}
```

## Exercises

1. Write a V program to display the first 10 natural numbers.
2. Write a V program to find the sum of first 10 natural numbers.
3. Write a V program to display n terms of natural number and their sum.
4. Write a V program to read 10 numbers from keyboard and find their sum and average.
5. Write a V program to display the cube of the number upto given an integer.
