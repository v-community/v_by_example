# Strings

In V können Strings mit dem Deklarationsoperator (`:=`) deklariert und initialisiert werden und sind, wie andere Variablen in V auch, standardmäßig `immutable`, d.h. unveränderlich.
Man kann zur Definition einer Variable vom Typ `string` sowohl doppelte (`""`), als auch einfache (`''`) Anführungszeichen verwenden.
Bei der Verwendung von `vfmt` werden doppelte Anführungszeichen in einzelne Anführungszeichen konvertiert, es sei denn der String enthält einzelne Anführungszeichen.

```go
name := 'Bob'
println(name)       // Bob
println(name.len)   // 3
```

Um die Länge eines Strings zu ermitteln, kann man die `.len` Methode verwenden.

## String Interpolation

Es ist ebenfalls möglich Variablen in einen String zu verpacken und diesen damit zu "erweitern" (engl. _interpolation = Erweiterung_). Um eine Variable in einen String zu interpolieren, verwendet man `$` vor dem Variablennamen:

```go
name:= 'Bob'
println('Hello $name!')     // Hello Bob
```

Um komplexere Ausdrücke zu interpolieren kann man nach dem Dollarzeichen noch geschweifte Klammern hinzufügen (`${}`), um so den Ausdruck darin zu interpolieren.

```go
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

## Konkatenation

Strings können mittels des `+` Operators auch aneinander gehängt (konkateniert) werden.
Da Strings ebenfalls standardmäßig unveränderlich sind, kann man nur Strings konkatenieren, die mit dem `mut` Schlüsselwort deklariert und initialisiert wurden.

```go
mut text := 'Hello'
concatenated_text := text + ' World!'
println(text)                   // Hello
println(text + ' World!')       // Hello World!
println(concatenated_text)      // Hello World!
```

Das Anhängen von `string`s kann man entweder mit Konkatenation oder dem `+=` Operator erreichen.

```go
mut hello := 'Hello '
hello += 'from V!'      // appends 'from V!' to the string stored in hello.
println(hello)          // Hello from V!
```

In V werden die Daten eines Strings in UTF-8 codiert, der String wird dann als schreibgeschützes Byte-Array repräsentiert.

```go
robert := 'Robert'
bert := robert[2..robert.len-1]                                 // bert
rob := robert[0..3]                                             // Rob
println('The persons of interest are: $robert, $bert, $rob')    // The persons of interest are: Robert, bert, Rob
```

### Notizen

Unter Verwendung `some_string[start..end]` Syntax, muyss beachtet werden, dass `end` nicht mehr enthalten ist.

Alle Operatoren in V können nur verwendet werden, wenn auf beiden Seiten des Operators Variablen des selben Typs stehen.
Der nachstehende Code kann nicht kompiliert werden, weil `age` vom Typ `int` ist.

```go
age := 25
println('age = ' + age)
```

Daher muss die Variable zuerst mit Hilfe der `.str()` Funktion in einen String konvertiert werden, oder man verwendet String-Interpolation (empfohlener Ansatz).

```go
age := 25
println('age = ' + age.str())   // age = 25
println('age = $age')           // age = 25
```

Es können weiterhin auch Character literals mit ` `` ` definiert werden.
Zusätzlich gibt es die Möglichkeit sogenannte Raw-Strings mit einem vorangestellten `r` zu definieren, diese werden nicht "escaped".

```go
hello := 'Hello\nWorld'
println(hello)                  // Hello
                                // World
raw_hello := r'Hello\nWorld'
println(raw_hello)              // Hello\nWorld
```
