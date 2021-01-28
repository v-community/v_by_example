---
version: 1.0.0
example_title: Variables
---

# Variabili

In V le variabili possono essere dichiarate e inizializzate con l'operatore `:=`. Le variabili possono essere dichiarate solo il in questo modo in V, questo significa che tutte le variabili hanno un valore iniziale. Il tipo di una variabile è dedotto dal valore alla sua destra. Di default le variabili in V sono immutabili.

```go
age := 23               // int
name := 'Alice'         // string
is_adult := age > 21    // bool

println(age_str)        // 23
println(name)           // Alice
println(is_adult)       // true
```

> Nota: Le variabili possono solo essere definite in una funzione. Non ci sono variabili globali o stati globali in V.

Per cambiare il valore di una variabile, bisogna renderla mutabile. Questo può essere fatto usando la parola riservata `mut` quando dichiariamo la variabile. Per assegnare un nuovo valore alla variabile si usa `=`.

```go
mut age := 20       // dichiaro mutabile la variabile age e le assegno il valore 20.
println(age)        // 20
age = 21            // assegno un nuovo valore a age
println(age)        // 21
```

Senza la parola ridervata `mut` ci darà un errore perché il valore di una variabile immutabile non può essere cambiato.

```go
fn main() {
    age = 20
    println(age)
}
```

Il codice sopra darà un errore durante la compilazione perché la varaibile `age` non è dichiarata,

```go
fn main() {
    mut age := 20       // dichiariamo mutabile la variabile age e le assegnamo il valore 20.
    println(age)        // 20
    age := 21           // ERROR
}
```

in questo caso `age := 21` darà un altro errore durante la compilazione perché la varaibile `age` è gia definita nello scope. E' molto semplice da ricordare, per dichiarare un valore `:=` e per assegnare un valore `=`.

Come in Go, puoi anche usare `_` per ignorare il valori quando non sono necessari. Di solito si usa nelle funzioni che ritornano più valori.

```go
_ := "I don't need this value"
println(_) // ERROR: Cannot use `_` as value
```

## Regole per i nomi

Le seguenti solo le regole che dovrebbero essere tenute a mente quando si danno i nomi alle variabili.

- Il nome non dovrebbe contenere leettere Maiuscole come `AlphaTest`
- Usa i trattini bassi come separatore, ad esempio `hello_world`
- Il nome dovrebbe essere il più possibile descrittivo
- Il nome non dovrebbe contenere `__`
- Il nome non dovrebbe contenere spazi
- Se il nome è più lungo di 11 caratteri allora devi usare `_` come separatore

Queste regole provengono da [`Snake_Case`](https://en.wikipedia.org/wiki/Snake_case). V utilizza lo Snake Case e si preferisce perché è molto più facile da leggere, scrivere e capire.

### Nomi validi

```go
boby
john_dads
myfamily_number
```

### Nomi non validi

```go
IamNotValid
new Make
```
