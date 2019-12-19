# Pointers

A V pointer is a variable that has a memory address where a value is stored. You can declare it by using the `&` operator.

Pointers in V provide an alternative way to access information stored in arrays.

## Trying Pointers out

Declare a variable as follows and check the output out:

```go
word_count := 1000

print(&word_count)
```

## Examples

```go
pub fn (c &MainHelper) worked_days_condition(times_array, dates_array []integer) {
    if times_array.len < 10 {
        panic('times_array < 10')
    }
    if dates_array.len < 10 {
        println('dates_array < 10')
    }
}
```
