---
id: 587d7da9367417b2b2512b66
title: Combinare due array usando il metodo concat
challengeType: 1
forumTopicId: 301229
dashedName: combine-two-arrays-using-the-concat-method
---

# --description--

<dfn>Concatenation</dfn> means to join items end to end. JavaScript offers the `concat` method for both strings and arrays that work in the same way. For arrays, the method is called on one, then another array is provided as the argument to `concat`, which is added to the end of the first array. It returns a new array and does not mutate either of the original arrays. Ecco un esempio:

```js
[1, 2, 3].concat([4, 5, 6]);
```

L'array restituito sarà `[1, 2, 3, 4, 5, 6]`.

# --instructions--

Utilizza il metodo `concat` nella funzione `nonMutatingConcat` per concatenare `attach` alla fine di `original`. La funzione dovrebbe restituire l'array concatenato.

# --hints--

Il tuo codice dovrebbe usare il metodo `concat`.

```js
assert(__helpers.removeJSComments(code).match(/\.concat/g));
```

L'array `first` non dovrebbe cambiare.

```js
assert(JSON.stringify(first) === JSON.stringify([1, 2, 3]));
```

L'array `second` non dovrebbe cambiare.

```js
assert(JSON.stringify(second) === JSON.stringify([4, 5]));
```

`nonMutatingConcat([1, 2, 3], [4, 5])` dovrebbe restituire `[1, 2, 3, 4, 5]`.

```js
assert(
  JSON.stringify(nonMutatingConcat([1, 2, 3], [4, 5])) ===
    JSON.stringify([1, 2, 3, 4, 5])
);
```

# --seed--

## --seed-contents--

```js
function nonMutatingConcat(original, attach) {
  // Only change code below this line


  // Only change code above this line
}

const first = [1, 2, 3];
const second = [4, 5];
nonMutatingConcat(first, second);
```

# --solutions--

```js
function nonMutatingConcat(original, attach) {
  return original.concat(attach);
}
const first = [1, 2, 3];
const second = [4, 5];
```
