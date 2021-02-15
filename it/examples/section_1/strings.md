---
version: 1.0.0
example_title: Strings
---

# Stringhe

In V si possono definire le stringhe usando l'operatore `:=`. Le stringhe (come altre variabili) sono immutabili di default. Si è liberi di usare `""` oppure `''` per denotare una stringa. Quando si usa `vfmt` tutte le stringhe con i doppi apici saranno convertiti a singolo apice, a meno che non contengano un carattere singolo apice.

```go
name := 'Bob'
println(name)       // Bob
println(name.len)   // 3
```

Per ottenre la lunghezza di una stringa si usa `.len`.

## Interpolazione di una stringa

E' possibile far interpolare una stringa con `$` davanti alla variabile:

```go
name:= 'Bob'
println('Hello $name!')     // Hello Bob
```

Nel caso si abbiano espressioni complesse si può usare la sintassi `${}` per l'interpolazione:

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

## Concatenazione

Le stringhe possono essere concatenate con l'operatore `+`.

```go
text := 'Hello'
concatenated_text := text + ' World!'
println(text)                   // Hello
println(text + ' World!')       // Hello World!
println(concatenated_text)      // Hello World!
```

Per appendere alla stringa con la concatenazione si può uesare anche l'operatore `+=`. Siccome le stringhe sono immutabili per default, questo è possibile solo se sono dichiarate con `mut`.

```go
mut hello := 'Hello '
hello += 'from V!'      // appende 'from V!' alla stringa salvata in hello.
println(hello)          // Hello from V!
```

In V, il dato stringa è codificato usando UTF-8 e la stringa stessa è un vettore read-only di byte. Questo fa si che lo slicing, il che significa che possiamo accedere al singolo carattere letterale oppura a parti di una variabile stringa.

```go
robert := 'Robert'
bert := robert[2..robert.len-1]                                 // bert
rob := robert[0..3]                                             // Rob
println('The persons of interest are: $robert, $bert, $rob')    // The persons of interest are: Robert, bert, Rob
```

### Note

Quando usiamo la sintassi `some_string[start..end]`, la `end` **non** è inclusa.

Tutti gli operatori in V devono avere valori dello stesso tipo da entrambi i lati. Il codice seguente non compilerà perché `age` è un `int`:

```go
age := 25
println('age = ' + age)
```

Quindi noi dobbiamo convertirlo a stringa, usando `.str()` oppure usando l'interpolazione di stringhe (come preferite):

```go
age := 25
println('age = ' + age.str())   // age = 25
println('age = $age')           // age = 25
```

Per definire caratteri letterali usa: ` `` `. Le stringhe grezze possono essere definite anteponendo `r`. Non considereranno i caratteri di escape.

```go
hello := 'Hello\nWorld'
println(hello)                  // Hello
                                // World
raw_hello := r'Hello\nWorld'
println(raw_hello)              // Hello\nWorld
```
