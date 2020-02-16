---
version: 1.0.0
example_title: Formatted Print
---

# Formatted Print

Konsolenausgaben werden durch verschiedene I/O-Streams gehandhabt, dazu sollte man wissen, wo und wie sie zu verwenden sind.

- `print`: schreibt Text in den Standard output stream (stdout), ohne einen Zeilenumbruch am Ende.

- `println`: wie `print`, allerdings mit Zeilenumbruch am Ende.

- `eprint`: wie `print`, aber der Output geht durch den Standard Error Stream (stderr).

- `eprintln`: wie `eprint`, aber mit einem Zeilenumbruch am Ende.

- `panic`: gibt den übergebenen Text auf der Konsole aus und beendet das Programm mit Fehlerode 1.

```v
print('Hello World')
print('Hello V')
```

Dieses Programm erzeugt die folgende Ausgabe in der Konsole: `Hello WorldHello V`

Wenn man die nächste Zeile in einer neuen Zeile ausgeben möchte, muss man am Ende des Satzes ein `\n` hinzufügen.

```v
print('Hello World \n')
print('Hello V ')
```

Wenn man `\n` nicht verwenden möchte, dann kann man statt `print` auch `println` verwenden.

## Exercises

Entkommentiere den Code in `hello.v` und sieh was passiert.
