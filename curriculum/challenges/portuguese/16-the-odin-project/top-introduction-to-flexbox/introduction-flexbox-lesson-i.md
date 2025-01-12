---
id: 6571c34768e4b3b17d3957fa
title: Lição I de Introdução ao Flexbox
challengeType: 15
dashedName: introduction-flexbox-lesson-i
---

# --description--

<iframe allowfullscreen="true" allowpaymentrequest="true" allowtransparency="true" class="cp_embed_iframe " frameborder="0" height="400" width="100%" name="cp_embed_1" scrolling="no" src="https://codepen.io/TheOdinProjectExamples/embed/BaZKPdw?height=400&amp;default-tab=html%2Cresult&amp;slug-hash=BaZKPdw&amp;editable=true&amp;user=TheOdinProjectExamples&amp;name=cp_embed_1" style="width: 100%; overflow:hidden; display:block;" title="CodePen incorporado" loading="lazy" id="cp_embed_BaZKPdw"></iframe>

Uma coisa a observar é que, neste exemplo, `flex-direction: column` não funcionaria como esperado se você usasse a abreviação `flex: 1`. Tente agora (ou seja, vá mudar o valor do flex na linha `flex: 1 1 auto;`). Você pode descobrir por que não funciona se `flex: 1` for usado? As divs colapsam, embora claramente tenham uma altura definida ali.

A razão para isso é que a forma abreviada de flex expande `flex-basis` para `0`, o que significa que todo o `flex-growing` e `flex-shrinking` começaria seus cálculos a partir de 0. Divs vazias, por padrão, têm altura 0, então para nossos itens de flex ocuparem a altura de seu contêiner, eles, na verdade, não precisariam ter qualquer altura.

O exemplo acima corrigiu isso especificando `flex: 1 1 auto`, dizendo aos itens flex para adotarem a altura fornecida. Você também poderia ter corrigido isso colocando uma `height` no `.flex-container` pai, ou usando `flex-grow: 1` invés da forma abreviada.

Outro detalhe a ser observado: quando você alterou a `flex-direction` para `column`, `flex-basis` refere-se a `height` em vez de `width`. Dado o contexto, isso pode ser óbvio, mas é algo a se ter em mente.

# --questions--

## --text--

Por que usar a forma abreviada `flex: 1` com `flex-direction: column` leva a divs colapsadas no exemplo descrito?

## --answers--

A forma abreviada do `flex` define `flex-basis` como 0, desconsiderando a altura definida das divs.

---

A forma abreviada do `flex` sobrepõe a `flex-direction` especificada, causando o colapso.

---

`flex: 1` só funciona com base em layout de linhas, não com base em colunas.

---

A propriedade `flex-basis` torna-se fixa na largura, ignorando a altura no layout de coluna.


## --video-solution--

1
