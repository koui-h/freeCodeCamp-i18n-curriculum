---
id: 5cddbfd622f1a59093ec611d
title: Creare un Modulo
challengeType: 6
forumTopicId: 301198
dashedName: create-a-module-script
---

# --description--

JavaScript started with a small role to play on an otherwise mostly HTML web. Today, it’s huge, and some websites are built almost entirely with JavaScript. In order to make JavaScript more modular, clean, and maintainable; ES6 introduced a way to easily share code among JavaScript files. This involves exporting parts of a file for use in one or more other files, and importing the parts you need, where you need them. In order to take advantage of this functionality, you need to create a script in your HTML document with a `type` of `module`. Here’s an example:

```html
<script type="module" src="filename.js"></script>
```

Uno script che utilizza questo tipo `module` può ora utilizzare le funzionalità di `import` e `export` che conoscerai nelle prossime sfide.

# --instructions--

Aggiungi al documento HTML uno script di tipo `module` e dagli `index.js` come file sorgente

# --hints--

Dovresti creare un tag `script`.

```js
assert(__helpers.removeJSComments(code).match(/<\s*script[^>]*>\s*<\/\s*script\s*>/g));
```

Il tuo tag `script` dovrebbe avere l'attributo `type` con un valore di `module`.

```js
assert(
  __helpers.removeJSComments(code).match(
    /<\s*script\s+[^t]*type\s*=\s*('|")module\1[^>]*>\s*<\/\s*script\s*>/g
  )
);
```

Il tuo tag `script` dovrebbe avere una `src` impostata su `index.js`.

```js
assert(
  __helpers.removeJSComments(code).match(
    /<\s*script\s+[^s]*src\s*=\s*('|")index\.js\1[^>]*>\s*<\/\s*script\s*>/g
  )
);
```

# --seed--

## --seed-contents--

```html
<html>
  <body>
    <!-- Only change code below this line -->

    <!-- Only change code above this line -->
  </body>
</html>
```

# --solutions--

```html
<html>
  <body>
    <script type="module" src="index.js"></script>
  </body>
</html>
```
