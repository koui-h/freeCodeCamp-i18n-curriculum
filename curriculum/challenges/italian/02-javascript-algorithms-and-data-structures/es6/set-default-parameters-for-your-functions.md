---
id: 587d7b88367417b2b2512b46
title: Impostare parametri predefiniti per le tue funzioni
challengeType: 1
forumTopicId: 301209
dashedName: set-default-parameters-for-your-functions
---

# --description--

In order to help us create more flexible functions, ES6 introduces <dfn>default parameters</dfn> for functions.

Dai un'occhiata a questo codice:

```js
const greeting = (name = "Anonymous") => "Hello " + name;

console.log(greeting("John"));
console.log(greeting());
```

La console mostrerà le stringhe `Hello John` e `Hello Anonymous`.

Il parametro predefinito entra in gioco quando l'argomento non è specificato (è indefinito). Come puoi vedere nell'esempio qui sopra, il parametro `name` riceverà il suo valore predefinito `Anonymous` quando non si fornisce un valore per il parametro. Puoi aggiungere valori predefiniti per tutti i parametri che vuoi.

# --instructions--

Modifica la funzione `increment` aggiungendo parametri predefiniti in modo che aggiunga 1 a `number` se `value` non è specificato.

# --hints--

Il risultato di `increment(5, 2)` dovrebbe essere `7`.

```js
assert(increment(5, 2) === 7);
```

Il risultato di `increment(5)` dovrebbe essere `6`.

```js
assert(increment(5) === 6);
```

Un parametro predefinito di valore `1` dovrebbe essere utilizzato per `value`.

```js
assert(__helpers.removeJSComments(code).match(/value\s*=\s*1/g));
```

# --seed--

## --seed-contents--

```js
// Only change code below this line
const increment = (number, value) => number + value;
// Only change code above this line
```

# --solutions--

```js
const increment = (number, value = 1) => number + value;
```
