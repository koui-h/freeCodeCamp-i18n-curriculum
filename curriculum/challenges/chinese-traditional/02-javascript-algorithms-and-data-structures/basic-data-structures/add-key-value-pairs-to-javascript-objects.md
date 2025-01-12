---
id: 587d7b7c367417b2b2512b18
title: 將鍵值對添加到對象中
challengeType: 1
forumTopicId: 301153
dashedName: add-key-value-pairs-to-javascript-objects
---

# --description--

At their most basic, objects are just collections of <dfn>key-value</dfn> pairs. In other words, they are pieces of data (<dfn>values</dfn>) mapped to unique identifiers called <dfn>properties</dfn> (<dfn>keys</dfn>). Take a look at an example:

```js
const tekkenCharacter = {
  player: 'Hwoarang',
  fightingStyle: 'Tae Kwon Doe',
  human: true
};
```

上面的代碼定義了一個叫做 `tekkenCharacter` 的“鐵拳”遊戲人物對象。 它有三個屬性，每個屬性都對應一個特定的值。 如果我們想爲它再添加一個叫做 `origin` 的屬性，可以這樣寫：

```js
tekkenCharacter.origin = 'South Korea';
```

上面的代碼中，我們使用了點號表示法。 如果我們現在輸出 `tekkenCharacter` 對象，便可以看到它具有 `origin` 屬性。 接下來，因爲這個人物在遊戲中有着與衆不同的橘色頭髮， 我們可以通過方括號表示法來爲它添加這個屬性，像這樣：

```js
tekkenCharacter['hair color'] = 'dyed orange';
```

如果要設置的屬性中存在空格，或者要設置的屬性是一個變量，那我們必須使用方括號表示法（bracket notation）來爲對象添加屬性。 在上面的代碼中，我們把屬性（hair color）放到引號裏，以此來表示整個字符串都是需要設置的屬性。 如果我們不加上引號，那麼中括號裏的內容會被當作一個變量來解析，這個變量對應的值就會作爲要設置的屬性， 請看這段代碼：

```js
const eyes = 'eye color';

tekkenCharacter[eyes] = 'brown';
```

執行以上所有示例代碼後，對象會變成這樣：

```js
{
  player: 'Hwoarang',
  fightingStyle: 'Tae Kwon Doe',
  human: true,
  origin: 'South Korea',
  'hair color': 'dyed orange',
  'eye color': 'brown'
};
```

# --instructions--

我們已經爲你創建了包含三個項目的 `foods` 對象。 請使用上述任意語法，來爲 foods 對象添加如下三個鍵值對：`bananas` 屬性，值爲 `13`；`grapes` 屬性，值爲 `35`；`strawberries` 屬性，值爲 `27`。

# --hints--

`foods` 應爲一個對象。

```js
assert(typeof foods === 'object');
```

`foods` 應有一個值爲 `13` 的 `bananas` 屬性。

```js
assert(foods.bananas === 13);
```

`foods` 應有一個值爲 `35` 的 `grapes` 屬性。

```js
assert(foods.grapes === 35);
```

`foods` 應有一個值爲 `27` 的 `strawberries` 屬性。

```js
assert(foods.strawberries === 27);
```

`foods` 對象的定義不應更改。

```js
assert(
  __helpers.removeJSComments(code).search(/let foods/) === -1 &&
  __helpers.removeJSComments(code).search(/const\s+foods\s*=\s*{\s*apples:\s*25,\s*oranges:\s*32,\s*plums:\s*28\s*};/
) !== -1
);
```

# --seed--

## --seed-contents--

```js
const foods = {
  apples: 25,
  oranges: 32,
  plums: 28
};

// Only change code below this line

// Only change code above this line

console.log(foods);
```

# --solutions--

```js
const foods = {
  apples: 25,
  oranges: 32,
  plums: 28
};

foods['bananas'] = 13;
foods['grapes']  = 35;
foods['strawberries'] = 27;
```
