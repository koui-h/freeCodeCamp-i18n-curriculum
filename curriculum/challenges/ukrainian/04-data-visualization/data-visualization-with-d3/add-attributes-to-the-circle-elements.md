---
id: 587d7fab367417b2b2512bd8
title: Додайте атрибути до кругів
challengeType: 6
forumTopicId: 301471
dashedName: add-attributes-to-the-circle-elements
---

# --description--

The last challenge created the `circle` elements for each point in the `dataset`, and appended them to the SVG. But D3 needs more information about the position and size of each `circle` to display them correctly.

Елемент `circle` в SVG має три основні атрибути. Атрибути `cx` та `cy` — це координати. Вони вказують D3, де розташувати *центр* фігури на SVG. Радіус (атрибут `r`) вказує розмір елемента `circle`.

Як і координата `y` для `rect`, атрибут `cy` для `circle` вимірюється зверху SVG, а не знизу.

Всі три атрибути можуть використовувати функцію зворотного виклику, щоб динамічно встановити значення. Пам’ятайте, що всі методи, згруповані після `data(dataset)`, запускаються по одному разу для кожного елемента в `dataset`. Параметр `d` у функції зворотного виклику посилається на поточний елемент в `dataset`, який є масивом для кожної точки. Використайте дужкову нотацію (наприклад, `d[0]`), щоб отримати доступ до значень в цьому масиві.

# --instructions--

Додайте атрибути `cx`, `cy` та `r` до елемента `circle`. Значення `cx` має бути першим числом у масиві для кожного елемента в `dataset`. Значення `cy` має базуватися на другому числі у масиві, але не забудьте показати графік правильно, а не перевернуто. Значенням `r` має бути `5` для всіх кругів.

# --hints--

Код має містити 10 елементів `circle`.

```js
assert($('circle').length == 10);
```

Перший елемент `circle` повинен мати `cx` зі значенням `34`, `cy` зі значенням `422` та `r` зі значенням `5`.

```js
assert(
  $('circle').eq(0).attr('cx') == '34' &&
    $('circle').eq(0).attr('cy') == '422' &&
    $('circle').eq(0).attr('r') == '5'
);
```

Другий елемент `circle` повинен мати `cx` зі значенням `109`, `cy` зі значенням `220` та `r` зі значенням `5`.

```js
assert(
  $('circle').eq(1).attr('cx') == '109' &&
    $('circle').eq(1).attr('cy') == '220' &&
    $('circle').eq(1).attr('r') == '5'
);
```

Третій елемент `circle` повинен мати `cx` зі значенням `310`, `cy` зі значенням `380` та `r` зі значенням `5`.

```js
assert(
  $('circle').eq(2).attr('cx') == '310' &&
    $('circle').eq(2).attr('cy') == '380' &&
    $('circle').eq(2).attr('r') == '5'
);
```

Четвертий елемент `circle` повинен мати `cx` зі значенням `79`, `cy` зі значенням `89` та `r` зі значенням `5`.

```js
assert(
  $('circle').eq(3).attr('cx') == '79' &&
    $('circle').eq(3).attr('cy') == '89' &&
    $('circle').eq(3).attr('r') == '5'
);
```

П’ятий елемент `circle` повинен мати `cx` зі значенням `420`, `cy` зі значенням `280` та `r` зі значенням `5`.

```js
assert(
  $('circle').eq(4).attr('cx') == '420' &&
    $('circle').eq(4).attr('cy') == '280' &&
    $('circle').eq(4).attr('r') == '5'
);
```

Шостий елемент `circle` повинен мати `cx` зі значенням `233`, `cy` зі значенням `355` та `r` зі значенням `5`.

```js
assert(
  $('circle').eq(5).attr('cx') == '233' &&
    $('circle').eq(5).attr('cy') == '355' &&
    $('circle').eq(5).attr('r') == '5'
);
```

Сьомий елемент `circle` повинен мати `cx` зі значенням `333`, `cy` зі значенням `404` та `r` зі значенням `5`.

```js
assert(
  $('circle').eq(6).attr('cx') == '333' &&
    $('circle').eq(6).attr('cy') == '404' &&
    $('circle').eq(6).attr('r') == '5'
);
```

Восьмий елемент `circle` повинен мати `cx` зі значенням `222`, `cy` зі значенням `167` та `r` зі значенням `5`.

```js
assert(
  $('circle').eq(7).attr('cx') == '222' &&
    $('circle').eq(7).attr('cy') == '167' &&
    $('circle').eq(7).attr('r') == '5'
);
```

Дев’ятий елемент `circle` повинен мати `cx` зі значенням `78`, `cy` зі значенням `180` та `r` зі значенням `5`.

```js
assert(
  $('circle').eq(8).attr('cx') == '78' &&
    $('circle').eq(8).attr('cy') == '180' &&
    $('circle').eq(8).attr('r') == '5'
);
```

Десятий елемент `circle` повинен мати `cx` зі значенням `21`, `cy` зі значенням `377` та `r` зі значенням `5`.

```js
assert(
  $('circle').eq(9).attr('cx') == '21' &&
    $('circle').eq(9).attr('cy') == '377' &&
    $('circle').eq(9).attr('r') == '5'
);
```

# --seed--

## --seed-contents--

```html
<body>
  <script>
    const dataset = [
                  [ 34,    78 ],
                  [ 109,   280 ],
                  [ 310,   120 ],
                  [ 79,    411 ],
                  [ 420,   220 ],
                  [ 233,   145 ],
                  [ 333,   96 ],
                  [ 222,   333 ],
                  [ 78,    320 ],
                  [ 21,    123 ]
                ];


    const w = 500;
    const h = 500;

    const svg = d3.select("body")
                  .append("svg")
                  .attr("width", w)
                  .attr("height", h);

    svg.selectAll("circle")
       .data(dataset)
       .enter()
       .append("circle")
       // Add your code below this line



       // Add your code above this line

  </script>
</body>
```

# --solutions--

```html
<body>
  <script>
    const dataset = [
                  [ 34,    78 ],
                  [ 109,   280 ],
                  [ 310,   120 ],
                  [ 79,    411 ],
                  [ 420,   220 ],
                  [ 233,   145 ],
                  [ 333,   96 ],
                  [ 222,   333 ],
                  [ 78,    320 ],
                  [ 21,    123 ]
                ];


    const w = 500;
    const h = 500;

    const svg = d3.select("body")
                  .append("svg")
                  .attr("width", w)
                  .attr("height", h);

    svg.selectAll("circle")
       .data(dataset)
       .enter()
       .append("circle")
       .attr("cx", (d) => d[0])
       .attr("cy", (d) => h - d[1])
       .attr("r", 5)

  </script>
</body>
```
