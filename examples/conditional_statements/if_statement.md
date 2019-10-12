# If statement

An `if` statement is a programming conditional statement that, if proved true, performs a function or displays information. Below is a general example of an if statement in V:

```v
john_height := 100
maria_height := 178

if john_height < maria_height {
	println('$john_height < $maria_height')
} else {
  println('$john_height > $maria_height')
}
```

The `if...else` statement executes two different codes depending upon whether the test expression is `true` or `false`. Sometimes, a choice has to be made from more than 2 possibilities. The `if...else if...else` ladder allows you to check between multiple test expressions and execute different statements.

```v
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

```v
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

```v
tom_age := 20
ashia_age := 38

s := if tom_age > ashia_age {
	'Tom is the youngest'
}
else {
	'Ashia is the youngest'
}
print(s) // 'Tom is the youngest'
```
