# Match

## The `match` statement

A match statement is a short-hand way for `if - else`.
If the input is matched the statement block of the first matching branch will be executed and its last expression will be returned.
The `else` branch will be executed when there is no other matching branch.

```v
num := 1
match num % 2 == 0  {
    true { print('The input number is even.') }
    else { print('The input number is odd.') }
}
```

One can also initialize variables using `match` to have different values according to a condition.

```v
num := 3
s := match num {
    1 { 'one' }
    2 { 'two' }
    else {
        'many'
    }
}
```

Examples:

```v
fn even(num int) bool {
    match num % 2 == 0  {
        true { print('The input number is even.') }
        else { print('The input number is odd.') }
    }
}

fn num_to_str(num int) int {
    match num {
        1 { 'one' }
        2 { 'two' }
        else {
            'many'
        }
    }
}

fn main() {
    println(even(14))           // 'The input number is even.'
    println(even(3))            // 'The input number is odd.'
    println(num_to_str(1))      // 'one'
    println(num_to_str(2))      // 'two'
    println(num_to_str(352))    // 'many'
}
```

### Enums

One can also match on `enum` values (variants) as branches by using the `.variant_here` syntax:

```v
enum Animal {
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

fn main() {
    my_cat := Animal.cat
    my_goldfish := Animal.goldfish

    println(makes_miau(my_cat))             // true
    println(is_land_creature(my_cat))       // true
    println(is_land_creature(my_goldfish))  // false
}
```

### Exercises

1. Write a V program that creates an array of all even numbers from 1 to 50.
2. Write a V program that, given an array of numbers, returns the maximum value.
3. Write a V program that determines whether color (enum) is red or blue
