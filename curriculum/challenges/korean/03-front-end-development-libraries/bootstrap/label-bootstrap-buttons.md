---
id: bad87fee1348bd9aec908856
title: 부트스트랩 버튼에 라벨 적용하기
challengeType: 0
forumTopicId: 18222
dashedName: label-bootstrap-buttons
---

# --description--

Just like we labeled our wells, we want to label our buttons.

각 `button` 요소들에 id 선택자와 동일한 텍스트를 부여해주세요.

# --hints--

`target1`이라는 id를 가진 `button` 요소는 `#target1`이라는 텍스트를 가져야 합니다.

```js
assert.match(document.querySelector('#target1')?.textContent,/#target1/gi)
```

`target2`이라는 id를 가진 `button` 요소는 `#target2`이라는 텍스트를 가져야 합니다.

```js
assert.match(document.querySelector('#target2')?.textContent,/#target2/gi)
```

`target3`이라는 id를 가진 `button` 요소는 `#target3`이라는 텍스트를 가져야 합니다.

```js
assert.match(document.querySelector('#target3')?.textContent,/#target3/gi)
```

`target4`이라는 id를 가진 `button` 요소는 `#target4`이라는 텍스트를 가져야 합니다.

```js
assert.match(document.querySelector('#target4')?.textContent,/#target4/gi)
```

`target5`이라는 id를 가진 `button` 요소는 `#target5`이라는 텍스트를 가져야 합니다.

```js
assert.match(document.querySelector('#target5')?.textContent,/#target5/gi)
```

`target6`이라는 id를 가진 `button` 요소는 `#target6`이라는 텍스트를 가져야 합니다.

```js
assert.match(document.querySelector('#target6')?.textContent,/#target6/gi)
```

# --seed--

## --seed-contents--

```html
<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>
  <div class="row">
    <div class="col-xs-6">
      <h4>#left-well</h4>
      <div class="well" id="left-well">
        <button class="btn btn-default target" id="target1"></button>
        <button class="btn btn-default target" id="target2"></button>
        <button class="btn btn-default target" id="target3"></button>
      </div>
    </div>
    <div class="col-xs-6">
      <h4>#right-well</h4>
      <div class="well" id="right-well">
        <button class="btn btn-default target" id="target4"></button>
        <button class="btn btn-default target" id="target5"></button>
        <button class="btn btn-default target" id="target6"></button>
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
      <h4>#left-well</h4>
      <div class="well" id="left-well">
        <button class="btn btn-default target" id="target1">#target1</button>
        <button class="btn btn-default target" id="target2">#target2</button>
        <button class="btn btn-default target" id="target3">#target3</button>
      </div>
    </div>
    <div class="col-xs-6">
      <h4>#right-well</h4>
      <div class="well" id="right-well">
        <button class="btn btn-default target" id="target4">#target4</button>
        <button class="btn btn-default target" id="target5">#target5</button>
        <button class="btn btn-default target" id="target6">#target6</button>
      </div>
    </div>
  </div>
</div>
```
