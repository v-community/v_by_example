---
version: 1.0.0
example_title: Datentypen
---

# Dati primitivi

V ha meno tipi di dati primitivi di Go.

## Tipi base

- bool ovvero `true` oppure `false`

- striga

- tipo intero `int`

- tipo float `float`

- rune (stinga Unicode)

## Tipi composti

- vettori `[]`.

- mappe `{}`

- strutture.

## Intero

L'intero è a sua volta classificato in `signed` e `unsigned`. `signed` significa positivo o negativo e `unsigned` significa solo positivo.

### Intero con segno

| Tipo   |  Dimensione |                             Intervallo |
| ------ | :---------: | -------------------------------------: |
| int8   |  8 bits     |                -128 a 2<sup>7</sup> -1 |
| int16  | 16 bits     |   -2<sup>15</sup> a 2<sup>15</sup> - 1 |
| int    | 32 bits     |   -2<sup>31</sup> a 2<sup>31</sup> - 1 |
| int64  | 64 bits     |   -2<sup>63</sup> a 2<sup>63</sup> - 1 |
| int128 | 128 bits    | -2<sup>127</sup> a 2<sup>127</sup> - 1 |

### Intero senza segno

| Tipo | Dimensione |                Intervallo |
| ---- | :--------: | ------------------------: |
| byte |  8 bits    |    0 bis 2<sup>7</sup> -1 |
| u16  | 16 bits    |  0 bis 2<sup>15</sup> - 1 |
| u32  | 32 bits    |  0 bis 2<sup>31</sup> - 1 |
| u64  | 64 bits    |  0 bis 2<sup>63</sup> - 1 |
| u128 | 128 bits   | 0 bis 2<sup>127</sup> - 1 |
