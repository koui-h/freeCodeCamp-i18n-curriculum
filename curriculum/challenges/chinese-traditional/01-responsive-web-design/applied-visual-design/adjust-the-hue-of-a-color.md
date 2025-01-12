---
id: 587d78a4367417b2b2512ad4
title: 調整顏色的色相
challengeType: 0
videoUrl: 'https://scrimba.com/c/cPp38TZ'
forumTopicId: 301036
dashedName: adjust-the-hue-of-a-color
---

# --description--

Colors have several characteristics including hue, saturation, and lightness. CSS3 introduced the `hsl()` function as an alternative way to pick a color by directly stating these characteristics.

**色相** 是色彩的基本屬性，就是平常所說的顏色名稱，如紅色、黃色等。 以顏色光譜爲例，光譜左邊從紅色開始，移動到中間的綠色，一直到右邊的藍色，色相值就是沿着這條線的取值。 在 `hsl()` 裏面，色相用色環來代替光譜，色相值就是色環裏面的顏色對應的從 0 到 360 度的角度值。

**飽和度** 是指色彩的純度，也就是顏色裏灰色的佔比。 飽和度越高則灰色佔比越少，色彩也就越純；反之則完全是灰色。 飽和度的取值範圍是表示灰色所佔百分比的 0 至 100。

**亮度** 決定顏色的明暗程度，也就是顏色裏白色或者黑色的佔比。 其中，100% 的亮度表示純白色， 0% 的亮度則表示純黑色；而 50% 的亮度就表示在色相中選取的顏色。

下面是一些使用 `hsl()` 描述顏色的例子，顏色都爲滿飽和度，中等亮度:

<table><thead><tr><th>Color</th><th>HSL</th></tr></thead><tbody><tr><td>red</td><td>hsl(0, 100%, 50%)</td></tr><tr><td>yellow</td><td>hsl(60, 100%, 50%)</td></tr><tr><td>green</td><td>hsl(120, 100%, 50%)</td></tr><tr><td>cyan</td><td>hsl(180, 100%, 50%)</td></tr><tr><td>blue</td><td>hsl(240, 100%, 50%)</td></tr><tr><td>magenta</td><td>hsl(300, 100%, 50%)</td></tr></tbody></table>

# --instructions--

將 class 爲 `green`、`cyan` 和 `blue` 的 `div` 的 `background-color` 屬性值設置爲使用 `hsl()` 表示的顏色。 顏色都爲滿飽和度，亮度中等。

# --hints--

你的代碼應該使用 `hsl()` 函數來聲明綠色。

```js
assert.match(code,/\.green\s*?{\s*?background-color\s*:\s*?hsl/gi);
```

你的代碼應該使用 `hsl()` 函數來聲明藍綠色。

```js
assert.match(code,/\.cyan\s*?{\s*?background-color\s*:\s*?hsl/gi);
```

你的代碼應該使用 `hsl()` 函數來聲明藍色。

```js
assert.match(code,/\.blue\s*?{\s*?background-color\s*:\s*?hsl/gi);
```

class 爲 `green` 的 `div` 元素的 `background-color` 屬性值應爲綠色。

```js
const greenElement = document.querySelector(".green");
const greenStyle = window.getComputedStyle(greenElement); 
assert.equal(greenStyle?.backgroundColor, 'rgb(0, 255, 0)');
```

class 爲 `cyan` 的 `div` 元素的 `background-color` 屬性值應爲藍綠色。

```js
const cyanElement = document.querySelector(".cyan");
const cyanStyle = window.getComputedStyle(cyanElement); 
assert.equal(cyanStyle?.backgroundColor, 'rgb(0, 255, 255)');
```

class 爲 `blue` 的 `div` 元素的 `background-color` 屬性值應爲藍色。

```js
const blueElement = document.querySelector(".blue");
const blueStyle = window.getComputedStyle(blueElement); 
assert.equal(blueStyle?.backgroundColor, 'rgb(0, 0, 255)');
```

# --seed--

## --seed-contents--

```html
<style>
  body {
    background-color: #FFFFFF;
  }

  .green {
    background-color: #000000;
  }

  .cyan {
    background-color: #000000;
  }

  .blue {
    background-color: #000000;
  }

  div {
    display: inline-block;
    height: 100px;
    width: 100px;
  }
</style>

<div class="green"></div>
<div class="cyan"></div>
<div class="blue"></div>
```

# --solutions--

```html
<style>
  body {
    background-color: #FFFFFF;
  }

  .green {
    background-color: hsl(120, 100%, 50%);
  }

  .cyan {
    background-color:   hsl(180, 100%, 50%);
  }

  .blue {
    background-color: hsl(240, 100%, 50%);
  }

  div {
    display: inline-block;
    height: 100px;
    width: 100px;
  }
</style>
<div class="green"></div>
<div class="cyan"></div>
<div class="blue"></div>
```
