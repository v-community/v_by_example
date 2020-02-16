---
version: 1.0.0
example_title: Variables
---

# Variables

Variablen können in V mit dem `:=` Operator deklariert und initialisiert werden.
Das ist die einzige Möglichkeit Variablen in V zu erzeugen, daraus folgt, dass alle Variablen in V immer einen initialen Wert haben.
Der Typ der Variable wird aus dem Wert auf der rechten Seite der Zuweisung abgeleitet. Variablen in V sind immutable per default.

```go
age := 23               // int
name := 'Alice'         // string
is_adult := age > 21    // bool

println(age_str)        // 23
println(name)           // Alice
println(is_adult)       // true
```

**Merke:** Variablen können nur innerhalb einer Funktion definiert werden. Es gibt in V keine globalen Variablen und auch keinen globalen Programmzustand.

Um den Wert einer Variable zu ändern muss diese mutable sein. Dies kann durch hinzufügen von `mut` zur Deklaration erreicht werden.
Einen neuen Variablenwert kann man dann mit `=` setzen.

```go
mut age := 20       // we declare the mutable variable age and assign it to the value 20.
println(age)        // 20
age = 21            // we assign a new value to age
println(age)        // 21
```

Das Weglassen des `mut` Schlüsselworts hier resultiert in einem Fehler beim Kompilieren, denn der Wert einer immutable Variable kann nicht verändert werden.

```go
fn main() {
    age = 20
    println(age)
}
```

Der obenstehende Code würde ebenfalls in einem Fehler beim kompilieren resultieren, da die Variable `age` hier nicht definiert ist,

```go
fn main() {
    mut age := 20       // we declare the mutable variable age and assign it to the value 20.
    println(age)        // 20
    age := 21           // ERROR
}
```

Hier würde `age := 21` einen Fehler beim kompilieren erzeugen, denn `age` ist hier schon definiert und kann nicht neu deklariert werden.

Eine Variable anlegen: `:=`.

Einen neuen Wert zuweisen: `=`.
