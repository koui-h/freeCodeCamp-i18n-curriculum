---
id: 599d0ba974141b0f508b37d5
title: Mirpzahlen
challengeType: 1
forumTopicId: 302253
dashedName: emirp-primes
---

# --description--

Eine emirp (**Primzahl** rückwärts buchstabiert) sind Primzahlen, die in ihrer Umkehrung (in ihrer Dezimaldarstellung) eine andere Primzahl ergeben.

# --instructions--

Schreibe eine Funktion, die:

<ul>
  <li>Zeigt die ersten <code>n</code> emirp Nummern.</li>
  <li>Zeigt die emirp-Nummern in einem Bereich an.</li>
  <li>Zeigt die Anzahl der Emirps in einem Bereich an.</li>
  <li>Zeigt die <code>n<sup>th</sup></code> Mirpzahl an.</li>
</ul>

Die Funktion sollte zwei Parameter akzeptieren. Die erste erhält `n` oder den Bereich als Anordnung. Der zweite wird einen Boolean erhalten, der angibt, ob die Funktion die Mirpzahlen als ein Array oder eine einzelne Zahl zurückgibt (die Anzahl der Primzahlen im Wertebereich oder die <code>n<sup>th</sup></code> Primzahl). Je nach den Parametern sollte die Funktion eine Anordnung oder eine Zahl zurückgeben.

# --hints--

`emirps` sollte eine Funktion sein.

```js
assert(typeof emirps === 'function');
```

`emirps(20,true)` sollte `[13,17,31,37,71,73,79,97,107,113,149,157,167,179,199,311,337,347,359,389]` zurückgeben

```js
assert.deepEqual(emirps(20, true), [
  13,
  17,
  31,
  37,
  71,
  73,
  79,
  97,
  107,
  113,
  149,
  157,
  167,
  179,
  199,
  311,
  337,
  347,
  359,
  389
]);
```

`emirps(1000)` sollte `70529` zurückgeben

```js
assert.deepEqual(emirps(1000), 70529);
```

`emirps([7700,8000],true)` sollte `[7717,7757,7817,7841,7867,7879,7901,7927,7949,7951,7963]` zurückgeben

```js
assert.deepEqual(emirps([7700, 8000], true), [
  7717,
  7757,
  7817,
  7841,
  7867,
  7879,
  7901,
  7927,
  7949,
  7951,
  7963
]);
```

`emirps([7700,8000],false)` sollte `11` zurückgeben

```js
assert.deepEqual(emirps([7700, 8000], false), 11);
```

# --seed--

## --seed-contents--

```js
function emirps(n) {

}
```

# --solutions--

```js
function emirps(num, showEmirps)
{
  const is_prime = function(n)
    {
    if (!(n % 2) || !(n % 3)) return false;
    let p = 1;
    while (p * p < n)
                    { if (n % (p += 4) == 0 || n % (p += 2) == 0)
                            { return false; } }
    return true;
  };
  const is_emirp = function(n) {
    const r = parseInt(n.toString().split('').reverse().join(''));
    return r != n && is_prime(n) && is_prime(r);
  };

  let i,
    arr = [];
  if (typeof num === 'number') {
    for (i = 0; arr.length < num; i++) if (is_emirp(i)) arr.push(i);
    // first x emirps
    if (showEmirps) return arr;
    // xth emirp
    return arr.pop();
  }

  if (Array.isArray(num)) {
    for (i = num[0]; i <= num[1]; i++) if (is_emirp(i)) arr.push(i);
    // emirps between x .. y
    if (showEmirps) return arr;
    // number of emirps between x .. y
    return arr.length;
  }
}
```
