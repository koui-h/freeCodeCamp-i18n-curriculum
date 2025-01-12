---
id: 587d781e367417b2b2512acc
title: Prender um elemento na tela com posicionamento fixed
challengeType: 0
videoUrl: 'https://scrimba.com/c/c2MDNUR'
forumTopicId: 301061
dashedName: lock-an-element-to-the-browser-window-with-fixed-positioning
---

# --description--

The next layout scheme that CSS offers is the `fixed` position, which is a type of absolute positioning that locks an element relative to the browser window. Similar to absolute positioning, it's used with the CSS offset properties and also removes the element from the normal flow of the document. Other items no longer "realize" where it is positioned, which may require some layout adjustments elsewhere.

Uma diferença chave entre os posicionamentos `fixed` e `absolute` é que o elemento com o posicionamento fixo não vai se mover quando o usuário rolar a página.

# --instructions--

A barra de navegação no código CSS está rotulada com o id de `navbar`. Modifique seu `position` para `fixed` e dê a ele às propriedades `top` e `left` 0 pixels. Depois de adicionar o código, role a janela de pré-visualização para ver como a barra navegação se mantém no lugar.

# --hints--

O elemento `#navbar` deve ter a propriedade `position` com o valor `fixed`.

```js
const navbarElement = document.querySelector('#navbar');
const navbarStyle = window.getComputedStyle(navbarElement);
 assert.equal(navbarStyle?.position, 'fixed');
```

A propriedade `top` deve ter o valor de 0 pixels no elemento `#navbar`.

```js
const navbarElement = document.querySelector('#navbar');
 const navbarStyle = window.getComputedStyle(navbarElement);
assert.equal(navbarStyle?.top, '0px');
```

A propriedade `left` deve ter o valor de 0 pixels no elemento `#navbar`.

```js
const navbarElement = document.querySelector('#navbar');
 const navbarStyle = window.getComputedStyle(navbarElement);
 assert.equal(navbarStyle?.left, '0px');
```

# --seed--

## --seed-contents--

```html
<style>
  body {
    min-height: 150vh;
  }
  #navbar {



    width: 100%;
    background-color: #767676;
  }
  nav ul {
    margin: 0px;
    padding: 5px 0px 5px 30px;
  }
  nav li {
    display: inline;
    margin-right: 20px;
  }
  a {
    text-decoration: none;
  }
</style>
<body>
  <header>
    <h1>Welcome!</h1>
    <nav id="navbar">
      <ul>
        <li><a href="">Home</a></li>
        <li><a href="">Contact</a></li>
      </ul>
    </nav>
  </header>
  <p>I shift up when the #navbar is fixed to the browser window.</p>
</body>
```

# --solutions--

```html
<style>
  body {
    min-height: 150vh;
  }
  #navbar {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    background-color: #767676;
  }
  nav ul {
    margin: 0px;
    padding: 5px 0px 5px 30px;
  }
  nav li {
    display: inline;
    margin-right: 20px;
  }
  a {
    text-decoration: none;
  }
</style>
<body>
  <header>
    <h1>Welcome!</h1>
    <nav id="navbar">
      <ul>
        <li><a href="">Home</a></li>
        <li><a href="">Contact</a></li>
      </ul>
    </nav>
  </header>
  <p>I shift up when the #navbar is fixed to the browser window.</p>
</body>
```
