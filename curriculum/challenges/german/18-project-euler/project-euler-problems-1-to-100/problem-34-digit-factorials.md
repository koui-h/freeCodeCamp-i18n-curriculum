---
id: 5900f38e1000cf542c50fea1
title: 'Problem 34: Ziffernfaktoren'
challengeType: 1
forumTopicId: 301998
dashedName: problem-34-digit-factorials
---

# --description--

145 ist eine merkwürdige Zahl, wie 1! + 4! + 5! = 1 + 24 + 120 = 145.

Finde die Zahlen und die Summe der Zahlen, die gleich der Summe der Fakultäten ihrer Ziffern sind.

**Hinweis:** wie 1! = 1 und 2! = 2 sind keine Summen, sie sind nicht enthalten.

# --hints--

`digitFactorial()` sollte ein Objekt zurückgeben.

```js
assert.typeOf(digitFactorial(), 'object');
```

`digitFactorial()` sollte { sum: 40730, Zahlen: [145, 40585] } zurückgeben.

```js
assert.deepEqual(digitFactorial(), { sum: 40730, numbers: [145, 40585] });
```

# --seed--

## --seed-contents--

```js
function digitFactorial() {

  var sum = 0;
  var numbers = [];
  return { sum, numbers };
}

digitFactorial();
```

# --solutions--

```js
// solution required
```
