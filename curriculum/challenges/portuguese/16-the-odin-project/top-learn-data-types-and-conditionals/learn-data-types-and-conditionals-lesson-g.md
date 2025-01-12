---
id: 65e9726d484dd50f720e6fec
title: Lição G de Aprenda tipos de dados e condicionais
challengeType: 15
dashedName: learn-data-types-and-conditionals-lesson-g
---

# --description--

O JavaScript também tem a capacidade de comparar tipos e valores usando o operador de igualdade estrita `===`. Esse operador verifica se os dois valores são iguais e do mesmo tipo. Por exemplo:

```javascript
let x = 5;
let y = "5";

let result = x === y;

console.log(result); // false
```

Neste exemplo, a variável `result` conterá `false` porque `x` é um número e `y` é uma string. Se, contudo, você usar o operador `==`, o resultado será `true`, pois o JavaScript converterá a string para um número e comparará os valores.

Esse operador é chamado de operador de igualdade estrita porque verifica tanto a igualdade de valor quanto de tipo. É frequentemente recomendado usar o operador `===` para evitar resultados inesperados ao comparar valores.

Há também um operador de desigualdade estrita `!==` que verifica se os dois valores não são iguais e do mesmo tipo.

Existem muitas maneiras de usar o operador de igualdade estrita, e é importante entender como ele funciona.

# --assignment--

Leia <a href="https://javascript.info/comparison" target="_blank" rel="noopener noreferrer nofollow">este artigo em JavaScript.info</a> para aprender mais sobre o operador de igualdade estrita.

# --questions--

## --text--

O que acontece quando você usa o operador de igualdade estrita `===` para comparar um número de valor `0` e um booleano de valor `false`?

## --answers--

O resultado seria `true`.

---

O resultado seria `false`.

---

Você não pode comparar um número e um booleano usando o operador de igualdade estrita.


## --video-solution--

2
