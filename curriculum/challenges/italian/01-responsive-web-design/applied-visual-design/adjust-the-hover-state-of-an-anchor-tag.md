---
id: 587d781d367417b2b2512ac8
title: Regolare lo stato di hover di un tag di ancoraggio
challengeType: 0
videoUrl: 'https://scrimba.com/c/cakRGcm'
forumTopicId: 301035
dashedName: adjust-the-hover-state-of-an-anchor-tag
---

# --description--

This challenge will touch on the usage of pseudo-classes. A pseudo-class is a keyword that can be added to selectors, in order to select a specific state of the element.

Ad esempio, lo stile di un tag di ancoraggio può essere cambiato per il suo stato di hover (cioè lo stato in cui il puntatore del mouse ci passa sopra) usando il selettore di pseudo-classe `:hover`. Ecco il CSS per cambiare il `color` del tag di ancoraggio in rosso durante il suo stato di hover:

```css
a:hover {
  color: red;
}
```

# --instructions--

L'editor ha una regola CSS per stilizzare tutti i tag `a` in nero. Aggiungi una regola in modo che quando l'utente passa sopra il tag `a`, il suo `color` diventi blu.

# --hints--

Il `color` del tag di ancoraggio dovrebbe rimanere nero, aggiungi solo regole CSS per lo stato di `:hover`.

```js
const anchorElement = document.querySelector("a"); 
const anchorStyle = window.getComputedStyle(anchorElement);
assert.equal(anchorStyle?.color, 'rgb(0, 0, 0)');
```

Il tag di ancoraggio dovrebbe avere un `color` blu al passaggio del mouse.

```js
assert.match(code,
    /a:hover\s*?{\s*?color:\s*?(blue|rgba\(\s*?0\s*?,\s*?0\s*?,\s*?255\s*?,\s*?1\s*?\)|#00F|rgb\(\s*?0\s*?,\s*?0\s*?,\s*?255\s*?\))\s*?;\s*?}/gi
  );
```

# --seed--

## --seed-contents--

```html
<style>
  a {
    color: #000;
  }



</style>
<a href="https://freecatphotoapp.com/" target="_blank">CatPhotoApp</a>
```

# --solutions--

```html
<style>
  a {
    color: #000;
  }
  a:hover {
    color: rgba(0,0,255,1);
  }
</style>
<a href="https://freecatphotoapp.com/" target="_blank">CatPhotoApp</a>
```
