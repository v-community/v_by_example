---
version: 1.0.0
titre de l'example: Hello World
---

# imprimé formaté

L'impression est assurée par diverses fonctions de flux I/O. Il convient de savoir où les utiliser en conséquence.

- `print`: pour l'impression du texte dans le flux de sortie sans nouvelle ligne.

- `println`: la même que `print` mais nouvelle ligne ajoutée automatiquement.

- `eprint`: la même que `print` mais le résultat est transmis au flux d'erreurs (stderr).

- `eprintln`: la même que `println` mais le résultat est transmis au flux d'erreurs (stderr).

- `panic`: fait une production et sort du programme.

```v
print('Hello World')
print('Hello V')
```

Il sera imprimé ce qui suit `Hello WorldHello V`

Si vous souhaitez imprimer la ligne suivante sur une nouvelle ligne, vous devrez faire `\n`.

```v
print('Hello World \n')
print('Hello V ')
```

si vous ne voulez pas utiliser  `\n` alors vous utilisez `println` au lieu de cela.

## Les commentaires

V soutient les commentaires d'une seule ligne `//` et les commentaires de plusieurs lignes `/* */`.
Ils doivent être utilisés pour documenter le code afin de faire savoir aux autres utilisateurs comment le code fonctionne. Il peut également être utilisé pour commenter temporairement le code qui doit être utilisé par la suite.

```v
// Ceci est un commentaire d'une seule ligne

/* Ceci est un
*  commentaire de plusiers lignes
* /* Elle peut également être imbriquée*/
*/
```

## Exercises

Essayez de décommenter le code en `hello.v` et voyez ce qui se passe.
