---
id: 587d7dad367417b2b2512b77
title: 생성자(Constructor) 함수 정의하기
challengeType: 1
forumTopicId: 16804
dashedName: define-a-constructor-function
---

# --description--

<dfn>Constructors</dfn> are functions that create new objects. They define properties and behaviors that will belong to the new object. Think of them as a blueprint for the creation of new objects.

여기 예시가 있습니다.

```js
function Bird() {
  this.name = "Albert";
  this.color = "blue";
  this.numLegs = 2;
}
```

이 생성자는 속성 `name`, `color`, 그리고 `numLegs`을 가지며 순서대로 Albert, blue 그리고 2 값으로 설정되어 있는 객체 `Bird` 를 정의합니다. 생성자는 몇가지 관례를 따릅니다.

<ul><li>Constructors are defined with a capitalized name to distinguish them from other functions that are not <code>constructors</code>.</li><li>생성자는 키워드 <code>this</code>를 사용하여 객체의 속성에 값을 설정합니다. 이 생성자에서 <code>this</code>는 생성자가 생성하는 새 객체를 가리킵니다.</li><li>생성자는 다른 함수처럼 값을 반환하는 대신에 속성과 행동을 정의합니다.</li></ul>

# --instructions--

속성 `name`, `color`, 그리고 `numLegs`을 가지며 값이 각각 순서대로 문자열, 문자열 그리고 숫자로 설정된 생성자 `Dog`을 생성하시오.

# --hints--

`Dog`는 문자열로 설정된 속성 `name`을 가져야 합니다.

```js
assert(typeof new Dog().name === 'string');
```

`Dog`는 문자열로 설정된 속성 `color`을 가져야 합니다.

```js
assert(typeof new Dog().color === 'string');
```

`Dog`는 숫자로 설정된 속성 `numLegs`을 가져야 합니다.

```js
assert(typeof new Dog().numLegs === 'number');
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
function Dog (name, color, numLegs) {
  this.name = 'name';
  this.color = 'color';
  this.numLegs = 4;
}
```
