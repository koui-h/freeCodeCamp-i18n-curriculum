---
id: 587d78a4367417b2b2512ad3
title: Ajustar a cor de vários elementos para cores complementares
challengeType: 0
videoUrl: 'https://scrimba.com/c/cWmPpud'
forumTopicId: 301033
dashedName: adjust-the-color-of-various-elements-to-complementary-colors
---

# --description--

The Complementary Colors challenge showed that opposite colors on the color wheel can make each other appear more vibrant when placed side-by-side. However, the strong visual contrast can be jarring if it's overused on a website, and can sometimes make text harder to read if it's placed on a complementary-colored background. In practice, one of the colors is usually dominant and the complement is used to bring visual attention to certain content on the page.

# --instructions--

Esta página usará um tom de azul-petróleo (`#09A7A1`) como cor dominante Seu complemento laranja (`#FF790E`) será usado para destacar visualmente os botões de inscrição. Altere a propriedade `background-color` do `header` e do `footer` de preto para azul-petróleo. Em seguida, altere a propriedade `color` do `h2` para azul-petróleo também. Finalmente, mude a propriedade `background-color` do `button` para a cor laranja.

# --hints--

O elemento `header` deve ter uma propriedade `background-color` com o valor de #09A7A1.

```js
const headerElement = document.querySelector('header'); 
const headerStyle = window.getComputedStyle(headerElement);
assert.equal(headerStyle?.backgroundColor, 'rgb(9, 167, 161)');
```

O elemento `footer` deve ter uma propriedade `background-color` com o valor de #09A7A1.

```js
const footerElement = document.querySelector('footer'); 
const footerStyle = window.getComputedStyle(footerElement);
assert.equal(footerStyle?.backgroundColor, 'rgb(9, 167, 161)');
```

O elemento `h2` deve ter uma propriedade `color` com o valor de #09A7A1.

```js
const h2Element = document.querySelector('h2'); 
const h2Style = window.getComputedStyle(h2Element);
assert.equal(h2Style?.color, 'rgb(9, 167, 161)');
```

O elemento `button` deve ter uma propriedade `background-color` com o valor de #FF790E.

```js
const buttonElement = document.querySelector('button'); 
const buttonStyle = window.getComputedStyle(buttonElement);
assert.equal(buttonStyle?.backgroundColor, 'rgb(255, 121, 14)');
```

# --seed--

## --seed-contents--

```html
<style>
  body {
    background-color: white;
  }
  header {
    background-color: black;
    color: white;
    padding: 0.25em;
  }
  h2 {
    color: black;
  }
  button {
    background-color: white;
  }
  footer {
    background-color: black;
    color: white;
    padding: 0.5em;
  }
</style>
<header>
  <h1>Cooking with FCC!</h1>
</header>
<main>
  <article>
    <h2>Machine Learning in the Kitchen</h2>
    <p>Join this two day workshop that walks through how to implement cutting-edge snack-getting algorithms with a command line interface. Coding usually involves writing exact instructions, but sometimes you need your computer to execute flexible commands, like <code>fetch Pringles</code>.</p>
    <button>Sign Up</button>
  </article>
  <article>
    <h2>Bisection Vegetable Chopping</h2>
    <p>This week-long retreat will level-up your coding ninja skills to actual ninja skills. No longer is the humble bisection search limited to sorted arrays or coding interview questions, applying its concepts in the kitchen will have you chopping carrots in O(log n) time before you know it.</p>
    <button>Sign Up</button>
  </article>
</main>
<br>
<footer>&copy; 2018 FCC Kitchen</footer>
```

# --solutions--

```html
<style>
  body {
    background-color: white;
  }
  header {
    background-color: #09A7A1;
    color: white;
    padding: 0.25em;
  }
  h2 {
    color: #09A7A1;
  }
  button {
    background-color: #FF790E;
  }
  footer {
    background-color: #09A7A1;
    color: white;
    padding: 0.5em;
  }
</style>
<header>
  <h1>Cooking with FCC!</h1>
</header>
<main>
  <article>
    <h2>Machine Learning in the Kitchen</h2>
    <p>Join this two day workshop that walks through how to implement cutting-edge snack-getting algorithms with a command line interface. Coding usually involves writing exact instructions, but sometimes you need your computer to execute flexible commands, like <code>fetch Pringles</code>.</p>
    <button>Sign Up</button>
  </article>
  <article>
    <h2>Bisection Vegetable Chopping</h2>
    <p>This week-long retreat will level-up your coding ninja skills to actual ninja skills. No longer is the humble bisection search limited to sorted arrays or coding interview questions, applying its concepts in the kitchen will have you chopping carrots in O(log n) time before you know it.</p>
    <button>Sign Up</button>
  </article>
</main>
<br>
<footer>&copy; 2018 FCC Kitchen</footer>
```
