---
id: 587d78a5367417b2b2512ad6
title: Criar um gradiente linear com CSS
challengeType: 0
videoUrl: 'https://scrimba.com/c/cg4dpt9'
forumTopicId: 301047
dashedName: create-a-gradual-css-linear-gradient
---

# --description--

Applying a color on HTML elements is not limited to one flat hue. CSS provides the ability to use color transitions, otherwise known as gradients, on elements. This is accessed through the `background` property's `linear-gradient()` function. Here is the general syntax:

```css
background: linear-gradient(gradient_direction, color 1, color 2, color 3, ...);
```

O primeiro argumento define a direção em que a transição da cor começa - pode ser declarado como um grau, onde `90deg` cria um gradiente horizontal (da esquerda para a direita) e `45deg` cria um gradiente diagonal (da esquerda inferior para a direita superior). Os argumentos seguintes especificam a ordem das cores utilizadas no gradiente.

Exemplo:

```css
background: linear-gradient(90deg, red, yellow, rgb(204, 204, 255));
```

# --instructions--

No elemento `div`, use a função `linear-gradient()` na propriedade `background`. Defina a direção do gradiente para 35 graus e use as cores `#CCFFFF` e `#FFCCCC`.

# --hints--

O elemento `div` deve ter uma cor gradiente (`linear-gradient`) de plano de fundo (`background`) com a direção e cores especificadas anteriormente.

```js
const divElement = document.querySelector('div');
const divStyle = window.getComputedStyle(divElement); 
assert.match(divStyle?.background, /linear-gradient\(35deg, rgb\(204, 255, 255\), rgb\(255, 204, 204\)\)/gi);
```

# --seed--

## --seed-contents--

```html
<style>
  div {
    border-radius: 20px;
    width: 70%;
    height: 400px;
    margin: 50px auto;

  }

</style>

<div></div>
```

# --solutions--

```html
<style>
  div {
    border-radius: 20px;
    width: 70%;
    height: 400px;
    margin: 50px auto;
    background: linear-gradient(35deg, #CCFFFF, #FFCCCC);
  }
</style>
<div></div>
```
