# Primitives

V has less primitive types than Go.

## Basic Types

- bool either `true` or `false`

- string

- integer type `int`

- float type `float`

- rune (Unicode string)

## Compound Types

- arrays `[]`

- map `{}`

- struct

## Integer

Integer is sub-classified into `signed` and `unsigned`. `signed` means positive or negative and `unsigned` means positive only.

### Signed Integer

| Type   |   Size   |                                   Range |
| ------ | :------: | --------------------------------------: |
| int8   |  8 bits  |                -128 to 2<sup>7</sup> -1 |
| int16  | 16 bits  |   -2<sup>15</sup> to 2<sup>15</sup> - 1 |
| int    | 32 bits  |   -2<sup>31</sup> to 2<sup>31</sup> - 1 |
| int64  | 64 bits  |   -2<sup>63</sup> to 2<sup>63</sup> - 1 |
| int128 | 128 bits | -2<sup>127</sup> to 2<sup>127</sup> - 1 |

### Unsigned Integer

| Type |   Size   |                    Range |
| ---- | :------: | -----------------------: |
| byte |  8 bits  |    0 to 2<sup>7</sup> -1 |
| u16  | 16 bits  |  0 to 2<sup>15</sup> - 1 |
| u32  | 32 bits  |  0 to 2<sup>31</sup> - 1 |
| u64  | 64 bits  |  0 to 2<sup>63</sup> - 1 |
| u128 | 128 bits | 0 to 2<sup>127</sup> - 1 |
