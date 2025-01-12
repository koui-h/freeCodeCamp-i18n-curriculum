---
id: bad87fee1348bd9aec908849
title: 在 Bootstrap Wells 中添加元素
challengeType: 0
forumTopicId: 16636
dashedName: add-elements-within-your-bootstrap-wells
---

# --description--

Now we're several `div` elements deep on each column of our row. This is as deep as we'll need to go. Now we can add our `button` elements.

每一個 class 屬性爲 `well` 的 `div` 元素內都應該放三個 `button` 元素。

# --hints--

每一個 class 屬性爲 `well` 的 `div` 元素內都應該放三個 `button` 元素。

```js
const buttonOne = document.querySelectorAll('div.well')?.[0];
const buttonOneChildren = buttonOne?.querySelectorAll(`:scope ${'button'}`);
assert.lengthOf(buttonOneChildren,3);

const buttonTwo = document.querySelectorAll('div.well')?.[1]
const buttonTwoChildren = buttonTwo?.querySelectorAll(`:scope ${'button'}`);
assert.lengthOf(buttonTwoChildren,3);
```

總共有 6 個 `button` 元素。

```js
assert.lengthOf(document.querySelectorAll('button'), 6);
```

確保所有 `button` 元素都有閉合標籤。

```js
assert.match(code,/<\/button>/g);
assert.match(code,/<button/g);
assert.equal(code.match(/<\/button>/g).length,code.match(/<button/g).length);
```

# --seed--

## --seed-contents--

```html
<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>
  <div class="row">
    <div class="col-xs-6">
      <div class="well">



      </div>
    </div>
    <div class="col-xs-6">
      <div class="well">



      </div>
    </div>
  </div>
</div>
```

# --solutions--

```html
<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>
  <div class="row">
    <div class="col-xs-6">
      <div class="well">
        <button></button>
        <button></button>
        <button></button>
      </div>
    </div>
    <div class="col-xs-6">
      <div class="well">
        <button></button>
        <button></button>
        <button></button>
      </div>
    </div>
  </div>
</div>
```
