---
version: 1.0.0
example_title: Primitives
---

# Primitives

V的基本类型比Go少。

## 基本数据类型

- bool 也就是 `true` 或者 `false`

- string 字符类型

- 整数类型 `int`

- 浮点数类型 `float`

- rune (Unicode字符串)

## 复合类型

- arrays `[]`

- map `{}`

- struct

## 整数

整数被细分为“signed”和“unsigned”。`signed`表示正或负，`unsigned`仅表示正。

### Signed Integer

| 类型   |   大小   |                                   范围  |
| ------ | :------: | --------------------------------------: |
| int8   |  8 bits  |                -128 to 2<sup>7</sup> -1 |
| int16  | 16 bits  |   -2<sup>15</sup> to 2<sup>15</sup> - 1 |
| int    | 32 bits  |   -2<sup>31</sup> to 2<sup>31</sup> - 1 |
| int64  | 64 bits  |   -2<sup>63</sup> to 2<sup>63</sup> - 1 |
| int128 | 128 bits | -2<sup>127</sup> to 2<sup>127</sup> - 1 |

### Unsigned Integer

| 类型 |   大小   |                    范围  |
| ---- | :------: | -----------------------: |
| byte |  8 bits  |    0 to 2<sup>7</sup> -1 |
| u16  | 16 bits  |  0 to 2<sup>15</sup> - 1 |
| u32  | 32 bits  |  0 to 2<sup>31</sup> - 1 |
| u64  | 64 bits  |  0 to 2<sup>63</sup> - 1 |
| u128 | 128 bits | 0 to 2<sup>127</sup> - 1 |
