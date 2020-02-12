# Mostrando información con formato

Para mostrar información se utilizan varias funciones de Entrada/Salida. Se debe saber cual de ellas usar de acuerdo a las necesidades.

- `print`: Para imprimir un mensaje en el stdout (pantalla) sin nueva linea.

- `println`: Igual que `print` pero se añade una nueva linea al final.

- `eprint`: Igual que `print` pero el mensaje va la salida de errores (stderr).

- `eprintln`: Igual que `eprint` pero el mensaje va la salida de errores (stderr).

- `panic`: Imprime un mensaje y termina el programa.

```v
print('Hello World')
print('Hello V')
```

Lo anterior mostrará `Hello WorldHello V` en la salida estándar.

Si se desea agregar un salto de linea se deba añadir `\n`.

```v
print('Hello World \n')
print('Hello V ')
```

Si no se desea usar `\n` mejor se puede utilizar la función `println`.

## Comments

V soporta comentarios de una linea `//` y multilinea `/* */`.
Se usan para documentar el código para que los usuarios sepan cómo funciona.

También se usan para comentarios temporales.


```v
// This is a single line comment

/* This is a
*  multi-line comment
* /* This could be nested as well*/
*/
```

## Ejercicios

Elimine los comentarios en `hello.v` y observe que pasa.
