---
id: 596e457071c35c882915b3e4
title: 文字列リストの比較
challengeType: 1
forumTopicId: 302235
dashedName: compare-a-list-of-strings
---

# --description--

リストとは、重複を含む可能性のある順序付けされた値の集合のことです。 こちらがその例です:

```js
const list = [['AA',  'BB', 'CC'], ['AA', 'ACB', 'AA'], [], ['AA']];
````

Given a list of arbitrarily many strings, implement a function for each of the following conditions:

<ul>
  <li>test if they are all lexically equal</li>
  <li>test if every string is lexically less than the one after it  (i.e. whether the list is in strict ascending order)</li>
</ul>

# --hints--

`allEqual` should be a function.

```js
assert(typeof allEqual === 'function');
```

`azSorted` という関数です。

```js
assert(typeof azSorted === 'function');
```

`allEqual(["AA", "AA", "AA", "AA"])` は真を返します。

```js
assert(allEqual(testCases[0]));
```

`azSorted(["AA", "AA", "AA", "AA"])` は偽を返します。

```js
assert(!azSorted(testCases[0]));
```

`allEqual(["AA", "ACB", "BB", "CC"])` は偽を返します。

```js
assert(!allEqual(testCases[1]));
```

`azSorted(["AA", "ACB", "BB", "CC"])` は真を返します。

```js
assert(azSorted(testCases[1]));
```

`allEqual([])` は真を返します。

```js
assert(allEqual(testCases[2]));
```

`azSorted([])` は真を返します。

```js
assert(azSorted(testCases[2]));
```

`allEqual(["AA"])` は真を返します。

```js
assert(allEqual(testCases[3]));
```

`azSorted(["AA"])` は真を返します。

```js
assert(azSorted(testCases[3]));
```

`allEqual(["BB", "AA"])` は偽を返します。

```js
assert(!allEqual(testCases[4]));
```

`azSorted(["BB", "AA"])` は偽を返します。

```js
assert(!azSorted(testCases[4]));
```

# --seed--

## --after-user-code--

```js
const testCases = [['AA', 'AA', 'AA', 'AA'], ['AA', 'ACB', 'BB', 'CC'], [], ['AA'], ['BB', 'AA']];
```

## --seed-contents--

```js
function allEqual(arr) {

  return true;
}

function azSorted(arr) {

  return true;
}
```

# --solutions--

```js
function allEqual(a) {
  let out = true;
  let i = 0;
  while (++i < a.length) {
    out = out && (a[i - 1] === a[i]);
  } return out;
}

function azSorted(a) {
  let out = true;
  let i = 0;
  while (++i < a.length) {
    out = out && (a[i - 1] < a[i]);
  } return out;
}
```
