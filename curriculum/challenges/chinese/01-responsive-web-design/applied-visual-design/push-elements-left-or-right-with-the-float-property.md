---
id: 587d78a3367417b2b2512ace
title: 使用 float 属性将元素左浮动或右浮动
challengeType: 0
videoUrl: 'https://scrimba.com/c/c2MDqu2'
forumTopicId: 301066
dashedName: push-elements-left-or-right-with-the-float-property
---

# --description--

The next positioning tool does not actually use `position`, but sets the `float` property of an element. Floating elements are removed from the normal flow of a document and pushed to either the `left` or `right` of their containing parent element. It's commonly used with the `width` property to specify how much horizontal space the floated element requires.

# --instructions--

使这两个元素按两列布局，`section` 和 `aside` 左右排列。 设置 `#left` 元素的 `float` 属性值为 `left`，设置 `#right` 元素的 `float` 属性值为 `right`。

# --hints--

id 为 `left` 的元素的 `float` 属性值应为 `left`。

```js
const leftElement = document.querySelector('#left');
const leftStyle = window.getComputedStyle(leftElement);
assert.equal(leftStyle?.float, 'left');
```

id 为 `right` 的元素的 `float` 属性值应为 `right`。

```js
const rightElement = document.querySelector('#right');
const rightStyle = window.getComputedStyle(rightElement);
assert.equal(rightStyle?.float, 'right');
```

# --seed--

## --seed-contents--

```html
<head>
  <style>
    #left {

      width: 50%;
    }
    #right {

      width: 40%;
    }
    aside, section {
      padding: 2px;
      background-color: #ccc;
    }
  </style>
</head>
<body>
  <header>
    <h1>Welcome!</h1>
  </header>
  <section id="left">
    <h2>Content</h2>
    <p>Good stuff</p>
  </section>
  <aside id="right">
    <h2>Sidebar</h2>
    <p>Links</p>
  </aside>
</body>
```

# --solutions--

```html
<head>
  <style>
    #left {
      float: left;
      width: 50%;
    }
    #right {
      float: right;
      width: 40%;
    }
    aside, section {
      padding: 2px;
      background-color: #ccc;
    }
  </style>
</head>
<body>
  <header>
    <h1>Welcome!</h1>
  </header>
  <section id="left">
    <h2>Content</h2>
    <p>Good stuff</p>
  </section>
  <aside id="right">
    <h2>Sidebar</h2>
    <p>Links</p>
  </aside>
</body>
```
