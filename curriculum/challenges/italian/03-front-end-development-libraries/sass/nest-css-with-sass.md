---
id: 587d7dbd367417b2b2512bb5
title: Nidifica il CSS con Sass
challengeType: 0
forumTopicId: 301457
dashedName: nest-css-with-sass
---

# --description--

Sass allows nesting of CSS rules, which is a useful way of organizing a style sheet.

Normalmente, ogni elemento è l'oggetto di una linea diversa che lo stilizza, in questo modo:

```scss
article {
  height: 200px;
}

article p {
  color: white;
}

article ul {
  color: blue;
}
```

Per un grande progetto però, il file CSS avrà molte linee e regole. Qui la nidificazione può aiutare a organizzare il codice inserendo le regole di stile figlie all'interno dei rispettivi elementi genitori:

```scss
article {
  height: 200px;

  p {
    color: white;
  }

  ul {
    color: blue;
  }
}

```

# --instructions--

Utilizza la tecnica di nidificazione mostrata sopra per riorganizzare le regole CSS per entrambi i figli dell'elemento `.blog-post`. Ai fini dei test, l'elemento `h1` dovrebbe venire prima dell'elemento `p`.

# --hints--

Il tuo codice dovrebbe riorganizzare le regole CSS in modo che gli `h1` e i `p` siano annidati nell'elemento padre `.blog-post`.

```js
assert(
  code.match(
    /\.blog-post\s*?{\s*?h1\s*?{\s*?text-align:\s*?center;\s*?color:\s*?blue;\s*?}\s*?p\s*?{\s*?font-size:\s*?20px;\s*?}\s*?}/gi
  )
);
```

# --seed--

## --seed-contents--

```html
<style type='text/scss'>
  .blog-post {

  }
  h1 {
    text-align: center;
    color: blue;
  }
  p {
    font-size: 20px;
  }
</style>

<div class="blog-post">
  <h1>Blog Title</h1>
  <p>This is a paragraph</p>
</div>
```

# --solutions--

```html
<style type='text/scss'>
  .blog-post {
    h1 {
      text-align: center;
      color: blue;
    }
    p {
      font-size: 20px;
    }
  }
</style>

<div class="blog-post">
  <h1>Blog Title</h1>
  <p>This is a paragraph</p>
</div>
```
