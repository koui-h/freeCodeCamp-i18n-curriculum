---
id: 587d78a9367417b2b2512ae9
title: Eine Grafik mit einer Bézierkurve bewegen
challengeType: 0
videoUrl: 'https://scrimba.com/c/c6bnRCK'
forumTopicId: 301071
dashedName: use-a-bezier-curve-to-move-a-graphic
---

# --description--

A previous challenge discussed the `ease-out` keyword that describes an animation change that speeds up first and then slows down at the end of the animation. On the right, the difference between the `ease-out` keyword (for the blue element) and `linear` keyword (for the red element) is demonstrated. Similar animation progressions to the `ease-out` keyword can be achieved by using a custom cubic Bezier curve function.

Im Allgemeinen führt das Ändern der Ankerpunkte `p1` und `p2` zu unterschiedlichen Bézierkurven und somit zu anderen Animationsabläufen. Hier ist ein Beispiel für eine Bezierkurve, die Werte verwendet, um den Style `ease-out` zu imitieren:

```css
animation-timing-function: cubic-bezier(0, 0, 0.58, 1);
```

Denke daran, dass alle `cubic-bezier`-Funktionen mit `p0` bei (0, 0) beginnen und mit `p3` bei (1, 1) enden. In diesem Beispiel bewegt sich die Kurve schneller durch die y-Achse (beginnt bei 0, geht über zu `p1` mit y-Wert 0, dann zu `p2` mit y-Wert 1) als sie sich durch die x-Achse bewegt (0 am Anfang, dann 0 für `p1`, bis zu 0.58 für `p2`). Dadurch schreitet die Veränderung des animierten Elements schneller voran als die Dauer der Animation für diesen Abschnitt. Gegen Ende der Kurve kehrt sich die Beziehung zwischen den Änderungen der x- und y-Werte um. Der y-Wert bewegt sich von 1 nach 1 (keine Änderung) und der x-Wert bewegt sich von 0.58 nach 1, wodurch sich die Animation, verglichen mit der Animationsdauer, langsamer ändert.

# --instructions--

Um die Wirkung dieser Bézierkurve in Aktion zu sehen, ändere die `animation-timing-function` des Elements mit der Id `red` in eine `cubic-bezier` Funktion mit x1, y1, x2 und y2 mit Werten von jeweils `0, 0, 0.58, 1`. Dadurch werden sich beide Elemente durchweg ähnlich bewegen.

# --hints--

Der Wert der `animation-timing-function`-Eigenschaft des Elements mit der Id `red` sollte eine `cubic-bezier`-Funktion mit den Werten x1, y1, x2 und y2 von 0, 0, 0.58 und 1 sein.

```js
const redElement = document.querySelector('#red');
const redStyle = window.getComputedStyle(redElement);
assert.equal(
  redStyle?.animationTimingFunction, 'cubic-bezier(0, 0, 0.58, 1)'
);
```

Das Element mit der Id `red` sollte nicht mehr die `animation-timing-function`-Eigenschaft von `linear` haben.

```js
const redElement = document.querySelector('#red');
const redStyle = window.getComputedStyle(redElement);
assert.notEqual(redStyle?.animationTimingFunction, 'linear');
```

Der Wert der Eigenschaft `animation-timing-function` für das Element mit der Id `blue` sollte sich nicht ändern.

```js
const blueElement = document.querySelector('#blue');
const blueStyle = window.getComputedStyle( blueElement);
const blueBallAnimation = __helpers.removeWhiteSpace(
  blueStyle?.animationTimingFunction
);
assert.isTrue(
  blueBallAnimation == 'ease-out' ||
    blueBallAnimation == 'cubic-bezier(0,0,0.58,1)'
);
```

# --seed--

## --seed-contents--

```html
<style>
  .balls{
    border-radius: 50%;
    position: fixed;
    width: 50px;
    height: 50px;
    margin-top: 50px;
    animation-name: bounce;
    animation-duration: 2s;
    animation-iteration-count: infinite;
  }
  #red {
    background: red;
    left: 27%;
    animation-timing-function: linear;
  }
  #blue {
    background: blue;
    left: 56%;
    animation-timing-function: ease-out;
  }
  @keyframes bounce {
    0% {
      top: 0px;
    }
    100% {
      top: 249px;
    }
  }
</style>
<div class="balls" id= "red"></div>
<div class="balls" id= "blue"></div>
```

# --solutions--

```html
<style>
  .balls{
    border-radius: 50%;
    position: fixed;
    width: 50px;
    height: 50px;
    margin-top: 50px;
    animation-name: bounce;
    animation-duration: 2s;
    animation-iteration-count: infinite;
  }
  #red {
    background: red;
    left: 27%;
    animation-timing-function: cubic-bezier(0, 0, 0.58, 1);
  }
  #blue {
    background: blue;
    left: 56%;
    animation-timing-function: ease-out;
  }
  @keyframes bounce {
    0% {
      top: 0px;
    }
    100% {
      top: 249px;
    }
  }
</style>
<div class="balls" id= "red"></div>
<div class="balls" id= "blue"></div>
```
