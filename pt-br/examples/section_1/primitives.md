# Primitivos

V tem menos tipos primitivos que Go.

## Tipos básicos

- bool pode ser `true` ou `false`

- string

- inteiro tipo `int`

- float tipo `float`

- rune (Unicode string)

## Tipos de compostos

- arrays `[]`

- map `{}`

- struct

## Inteiro

O número inteiro é subclassificado em `signed` e `unsigned`. `signed` significa positivo ou negativo e não `unsigned` significa apenas positivo.

### Signed Integer

| Tipo   | Tamanho  |                                   Range |
| ------ | :------: | --------------------------------------: |
| int8   |  8 bits  |                -128 to 2<sup>7</sup> -1 |
| int16  | 16 bits  |   -2<sup>15</sup> to 2<sup>15</sup> - 1 |
| int    | 32 bits  |   -2<sup>31</sup> to 2<sup>31</sup> - 1 |
| int64  | 64 bits  |   -2<sup>63</sup> to 2<sup>63</sup> - 1 |
| int128 | 128 bits | -2<sup>127</sup> to 2<sup>127</sup> - 1 |

### Unsigned Integer

| Tipo | Tamanho  |                    Range |
| ---- | :------: | -----------------------: |
| byte |  8 bits  |    0 to 2<sup>7</sup> -1 |
| u16  | 16 bits  |  0 to 2<sup>15</sup> - 1 |
| u32  | 32 bits  |  0 to 2<sup>31</sup> - 1 |
| u64  | 64 bits  |  0 to 2<sup>63</sup> - 1 |
| u128 | 128 bits | 0 to 2<sup>127</sup> - 1 |
