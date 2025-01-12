---
id: 587d7dbb367417b2b2512bac
title: 删除开头和结尾的空白
challengeType: 1
forumTopicId: 301362
dashedName: remove-whitespace-from-start-and-end
---

# --description--

Sometimes whitespace characters around strings are not wanted but are there. Typical processing of strings is to remove the whitespace at the start and end of it.

# --instructions--

编写一个正则表达式并使用适当的字符串方法删除字符串开头和结尾的空格。

**注意：** `String.prototype.trim()` 方法在这里也可以实现同样的效果，但是你需要使用正则表达式来完成此项挑战。

# --hints--

`result` 应该等于 `Hello, World!`

```js
assert(result === 'Hello, World!');
```

你不应该使用 `String.prototype.trim()` 方法。

```js
assert(!__helpers.removeJSComments(code).match(/\.?[\s\S]*?trim/));
```

`result` 变量的值不应该是一个字符串。

```js
assert(!__helpers.removeJSComments(code).match(/result\s*=\s*["'`].*?["'`]/));
```

`hello` 变量的值不应更改。

```js
assert(hello === '   Hello, World!  ');
```

# --seed--

## --seed-contents--

```js
let hello = "   Hello, World!  ";
let wsRegex = /change/; // Change this line
let result = hello; // Change this line
```

# --solutions--

```js
let hello = "   Hello, World!  ";
let wsRegex = /^(\s+)(.+[^\s])(\s+)$/;
let result = hello.replace(wsRegex, '$2');
```
