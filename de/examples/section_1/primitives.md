---
version: 1.0.0
example_title: Datentypen
---

# Primitive Datentypen

V hat weniger primitive Datentypen als Go.

## Grundlegende Typen

- `bool`: Wahrheitswert `true` oder `false`

- `string`: eine Zeichenkette aus Bytes

- `int`: numerischer Typ für ganze Zahlen

- `float` numerischer Typ für Gleitkommazahlen.

- `rune`: Unicode string, ein character literal

## Komplexere Typen

- `array`/`[]`: Eine Sammlung von Elementen des selben Typs (siehe [Array](../section_3/arrays.md)).

- `map`: Eine Sammlung von Schlüssel- und Wertpaaren `{ 'key' : value }`

- `struct`: Eine Datenstruktur zur Modellierung komplexerer Daten (siehe [Structs](../section_3/struct.md)).

## Integer

Der Typ Integer kann weiterhin unterschieden werden in `signed` und `unsigned`. `Signed` bedeutet vorzeichenbehaftet, also positive und negative Werte der Variable sind möglich.
`Unsigned` hingegen hat kein Vorzeichen, demnach kann der Wert nur eine positive Zahl sein.

### Signed Integer

| Type   |  Größe   |                              Wertbereich |
| ------ | :------: | ---------------------------------------: |
| int8   |  8 bits  |                -128 bis 2<sup>7</sup> -1 |
| int16  | 16 bits  |   -2<sup>15</sup> bis 2<sup>15</sup> - 1 |
| int    | 32 bits  |   -2<sup>31</sup> bis 2<sup>31</sup> - 1 |
| int64  | 64 bits  |   -2<sup>63</sup> bis 2<sup>63</sup> - 1 |
| int128 | 128 bits | -2<sup>127</sup> bis 2<sup>127</sup> - 1 |

### Unsigned Integer

| Type |   Size   |               Wertbereich |
| ---- | :------: | ------------------------: |
| byte |  8 bits  |    0 bis 2<sup>7</sup> -1 |
| u16  | 16 bits  |  0 bis 2<sup>15</sup> - 1 |
| u32  | 32 bits  |  0 bis 2<sup>31</sup> - 1 |
| u64  | 64 bits  |  0 bis 2<sup>63</sup> - 1 |
| u128 | 128 bits | 0 bis 2<sup>127</sup> - 1 |
