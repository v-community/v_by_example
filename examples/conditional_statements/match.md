# Conditional Statements

## The `match` statement

A match statement is a short-hand way for `if - else`.
If the input is matched the statement block of the first matching branch will be executed and its last expression will be returned.
The `else` branch will be executed when there is no other matching branch.

```go
num := 1
match num % 2 == 0  {
    true { print('The input number is even.') }
    else { print('The input number is odd.') }
}
```

One can also initialize variables using `match` to have different values according to a condition.

```go
num := 3
s := match num {
    1 { 'one' }
    2 { 'two' }
    else {
        println('the input was not matched before')
        'many'
    }
}
```

#### Enums

One can also match on `enum` values (variants) as branches by using the `.variant_here` syntax:

```go
enum Animals {
    cat
    dog
    goldfish
    pig
}

fn makes_miau(a Animal) bool {
    return match a {
        .cat { true }
        else { false }
    }
}

fn is_land_creature(a Animal) bool {
    return match a {
        .cat { true }
        .dog { true }
        .pig { true }
        else {
            false
        }
    }
}
// OR LIKE THAT
fn is_land_creature_alt(a Animal) bool {
    return match a {
        .goldfish { false }
        else {
            true
        }
    }
}
```
