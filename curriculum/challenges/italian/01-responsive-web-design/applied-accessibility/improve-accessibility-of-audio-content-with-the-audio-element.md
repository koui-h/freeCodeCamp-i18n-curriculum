---
id: 587d7789367417b2b2512aa4
title: Migliorare l'accessibilità dei contenuti audio con l'elemento audio
challengeType: 0
videoUrl: 'https://scrimba.com/c/cVJVkcZ'
forumTopicId: 301014
dashedName: improve-accessibility-of-audio-content-with-the-audio-element
---

# --description--

HTML5's `audio` element gives semantic meaning when it wraps sound or audio stream content in your markup. Audio content also needs a text alternative to be accessible to people who are deaf or hard of hearing. This can be done with nearby text on the page or a link to a transcript.

Il tag `audio` supporta l'attributo `controls`. Questo mostra i comandi di default del browser play, pausa, ecc. e supporta l'uso direttamente da tastiera. Esso è un attributo booleano, cioè non ha bisogno di un valore: la sua presenza all'interno del tag attiva l'impostazione.

Ecco un esempio:

```html
<audio id="meowClip" controls>
  <source src="audio/meow.mp3" type="audio/mpeg">
  <source src="audio/meow.ogg" type="audio/ogg">
</audio>
```

**Nota:** di solito i contenuti multimediali hanno sia componenti visuali che sonori. Necessitano inoltre di sottotitoli sincronizzati e trascrizioni affinché gli utenti con difficoltà visive e/o uditive possano accedervi. Di solito, uno sviluppatore web non è responsabile per la creazione di sottotitoli e trascrizioni, ma deve sapere come includerli.

# --instructions--

È il momento di prendersi una pausa da Camper Cat e fare la conoscenza di camper Zersiax (@zersiax), un campione in fatto di accessibilità, e un utilizzatore di screen reader. Per ascoltare una clip del suo screen reader, aggiungi un elemento `audio` dopo l'elemento `p`. Includi l'attributo `controls`. Then place a `source` element inside the `audio` tags with the `src` attribute set to `https://cdn.freecodecamp.org/curriculum/applied-accessibility/screen-reader.mp3` and `type` attribute set to `"audio/mpeg"`.

**Nota:** la clip audio potrebbe sembrare veloce e difficile da capire, ma questa è la velocità normale per gli utenti di screen reader.

# --hints--

Il tuo codice dovrebbe avere un tag `audio`.

```js
assert.lengthOf(document.querySelectorAll('audio'),1);
```

Il tuo elemento `audio` dovrebbe avere un tag di chiusura.

```js
assert.match(code,/<audio.*>[\s\S]*<\/audio>/g);
assert.lengthOf(code.match(/<\/audio>/g),1);
```

Il tag `audio` dovrebbe avere l'attributo `controls`.

```js
assert.exists(document.querySelector('audio')?.getAttribute('controls'));
```

Il tuo codice dovrebbe avere un tag `source`.

```js
assert.lengthOf(document.querySelectorAll('source'), 1);
```

Il tuo tag `source` dovrebbe essere all'interno dei tag `audio`.

```js
const audio = document.querySelector('audio');
const children = audio.querySelectorAll(`:scope ${'source'}`);
assert.lengthOf(children,1);
```

Il valore dell'attributo `src` all'interno del tag `source` dovrebbe corrispondere esattamente al link presente nelle istruzioni.

```js
assert.equal(
  document.querySelector('source')?.getAttribute('src'),
  'https://cdn.freecodecamp.org/curriculum/applied-accessibility/screen-reader.mp3'
);
```

Il tuo codice dovrebbe includere un attributo `type` all'interno del tag `source` con un valore audio/mpeg.

```js
assert.equal(document.querySelector('source')?.getAttribute('type'), 'audio/mpeg');
```

# --seed--

## --seed-contents--

```html
<body>
  <header>
    <h1>Real Coding Ninjas</h1>
  </header>
  <main>
    <p>A sound clip of Zersiax's screen reader in action.</p>



  </main>
</body>
```

# --solutions--

```html
<body>
  <header>
    <h1>Real Coding Ninjas</h1>
  </header>
  <main>
    <p>A sound clip of Zersiax's screen reader in action.</p>
    <audio controls>
      <source src="https://cdn.freecodecamp.org/curriculum/applied-accessibility/screen-reader.mp3" type="audio/mpeg"/>
    </audio>
  </main>
</body>
```
