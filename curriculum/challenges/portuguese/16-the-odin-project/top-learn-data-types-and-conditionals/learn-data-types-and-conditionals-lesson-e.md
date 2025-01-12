---
id: 65e97260484dd50f720e6fea
title: Lição E de Aprenda tipos de dados e condicionais
challengeType: 15
dashedName: learn-data-types-and-conditionals-lesson-e
---

# --description--

Strings definidas usando acentos graves (em inglês, backticks) são chamadas de template literals. É uma nova forma de definir strings em JavaScript. Elas permitem que você insira expressões dentro da string. Isso é feito envolvendo a expressão em `${}`.

Por exemplo, o código a seguir:

```javascript
let name = "John";
let age = 25;
let greeting = `Hello, my name is ${name} and I am ${age} years old.`;
```

resultará na variável `greeting` com a string "Hello, my name is John and I am 25 years old."

# --questions--

## --text--

Qual das seguintes é a maneira correta de definir um template literal em JavaScript?

## --answers--

`` `Hello, my name is ${name} and I am ${age} years old.` ``

---

`` `Hello, my name is `name` and I am `age` years old.` ``

---

`` `Hello, my name is {name} and I am {age} years old.` ``

---

`` `Hello, my name is $name and I am $age years old.` ``

## --video-solution--

1
