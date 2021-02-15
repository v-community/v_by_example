---
version: 1.0.0
example_title: Stampa formattata
---

# Stampa formattata

La stampa è gestita da varie funzioni di stream I/O. Di conseguenza bisognerebbe sapere dove usarle.

- `print`: per stampare il testo nello stream di output senza un a capo.

- `println`: come `print`, ma aggiunge automaticamente un a capo.

- `eprint`: come `print`, ma l'output finisce nello stream di errore (stderr).

- `eprintln`: come `println`, ma l'output finisce nello stream di errore (stderr).

- `panic`: restituisce l'output ed esce dal programma.

```v
print('Hello World')
print('Hello V')
```

Questo stamperà `Hello WorldHello V`

Se vuoi stampare la riga successiva, scrivendo su una nuova linea, dovresti utilizzare `\n`.

```v
print('Hello World \n')
print('Hello V ')
```

Se non vuoi usare `\n` allora, al suo posto, puoi usare `println`.

## Esercizi

Prova a togliere i commenti nel file `hello.v` e vedi cosa succede.
