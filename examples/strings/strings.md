# Strings

In V one can define strings using the `:=` operator. Strings (like other variables) are immutable by default. One is free to use `""` or `''` to denote a string. When using `vfmt` all double-quoted strings will be converted to single-quoted ones unless it contains a single quote character.

```v
name := 'Bob'
println(name)       // Bob
println(name.len)   // 3
```

Getting the length of a string works with `.len`.

## Interpolation

It is possible to do string interpolation with `$` in front of the variable:

```v
name:= 'Bob'
println('Hello $name!')     // Hello Bob
```

One can have more complex expressions with interpolation syntax by using `${}`:

```v
struct User {
    name string
    age int
}
bob := User {
    name: 'Bob'
    age: 17
}
println('Say Hello to a new User: ${bob.name}, ${bob.age}')             // Say Hello to new User: Bob, 17
println('${bob.name}s age is higher or equal to 18: ${bob.age >= 18}')  // 0 <=> number representation for false
```

## Concatenation

Strings can be concatenated with the `+` operator. Since strings are also immutable by default it is only possible to concatenate strings if they are declared with `mut`.

```v
mut text := 'Hello'
concatenated_text := text + ' World!'
println(text)                   // Hello
println(text + ' World!')       // Hello World!
println(concatenated_text)      // Hello World!
```

Appending to a string works with concatenation as well as with `+=` operator.

```go
mut hello := 'Hello '
hello += 'from V!'      // appends 'from V!' to the string stored in hello.
println(hello)          // Hello from V!
```

In V, string data is encoded using UTF-8 and the string itself is a read-only array of bytes. This makes slicing possible, which means we can access single-character literals or slices of a string variable.

```v
robert := 'Robert'
bert := robert[2..robert.len-1]                                 // bert
rob := robert[0..3]                                             // Rob
println('The persons of interest are: $robert, $bert, $rob')    // The persons of interest are: Robert, bert, Rob
```

### Notes

When using `some_string[start..end]` syntax the `end` is **not** inclusive.

All operators in V must have values of the same type on both sides. The code below will not compile because `age` is an `int`:

```v
age := 25
println('age = ' + age)
```

We therefore need to convert it to string by using `.str()` or use string interpolation (preferred):

```v
age := 25
println('age = ' + age.str())   // age = 25
println('age = $age')           // age = 25
```

To define character literals use: ` `` `. Raw strings can be defined as prepending `r`. They are not escaped.

```v
hello := 'Hello\nWorld'
println(hello)                  // Hello
                                // World
raw_hello := r'Hello\nWorld'
println(raw_hello)              // Hello\nWorld
```
