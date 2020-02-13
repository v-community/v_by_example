# Cadenas


En V se pueden definir las cadenas usando el operador `:=`. Las cadenas (como las variables de los otros tipos) son inmutables por defecto. Se puede usar `""` o `''` para denotar los literales tipo cadena. Cuando se usa `vfmt` todas los literales definidos usando comillas dobles se convierten a literales de comillas simples.

```go
name := 'Bob'
println(name)       // Bob
println(name.len)   // 3
```

Para objetner la longitud de una cadena se usa `.len`.

## Interpolación

Es posible hacer la interpolación de cadenas usando `$` antes del nombre de la variable:


```go
name:= 'Bob'
println('Hello $name!')     // Hello Bob!
```

Se pueden tener expresiones más complejas con la interpolación usando `${}`:

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

## Concatenación

Las cadenas se concatenan con `+` operator.

```go
text := 'Hello'
concatenated_text := text + ' World!'
println(text)                   // Hello
println(text + ' World!')       // Hello World!
println(concatenated_text)      // Hello World!
```

Las cadenas se pueden concatenar también con el operador `+=`. Dado que las cadenas son inmutables por defecto esto es sólo posible si la variable se ha declarado  `mut`.. 

```go
mut hello := 'Hello '
hello += 'from V!'      // appends 'from V!' to the string stored in hello.
println(hello)          // Hello from V!
```

En V, las cadenas son codificadasd usando UTF-8 y las cadenas en si mismas son un arreglo de bytes de sólo lectura. Esto hace que se posible hacer slicing, es decir es posible acceder a los caracteres de forma individual o a slices de la variable typo cadena.

```go
robert := 'Robert'
bert := robert[2..robert.len]                                 // bert
rob := robert[0..3]                                           // Rob
println('The persons of interest are: $robert, $bert, $rob')  // The persons of interest are: Robert, bert, Rob
```

### Notas

Cuando se usa `some_string[start..end]`,  `end` es **no** inclusivo.

Todos los operadores en V tienen que tener valores del mismo tipo en ambos lados. El código siguiente no compila correctamente, debido a que `age` es de tipo `int`:

```go
age := 25
println('age = ' + age)
```

Es necesario convertir el valor a cadena usando `.str()` o usar interpolación de cadenas (preferido):

```go
age := 25
println('age = ' + age.str())   // age = 25
println('age = $age')           // age = 25
```

Para definir literales tipo caracter se usa: ` `` `. Cadenas planas se pueden definir usando `r` entes del literal tipo cadena. De este modo la cadena no es escapada.

```go
hello := 'Hello\nWorld'
println(hello)                  // Hello
                                // World
raw_hello := r'Hello\nWorld'
println(raw_hello)              // Hello\nWorld
```
