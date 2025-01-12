---
id: bad87fee1348bd9aed808826
title: Desactiva un Elemento Usando jQuery
challengeType: 6
forumTopicId: 17563
dashedName: disable-an-element-using-jquery
---

# --description--

También puedes cambiar las propiedades que no son CSS de tus elementos HTML con jQuery. Por ejemplo, puedes desactivar botones.

Cuando desactivas un botón, se pondrá gris y ya no podrá ser clickeado.

jQuery tiene una función llamada `.prop()` que te permite ajustar las propiedades de los elementos.

Así es como desactivarías todos los botones:

```js
$("button").prop("disabled", true);
```

Desactiva solo el botón `target1`.

# --hints--

Your `target1` button should be disabled.

```js
assert(
  $('#target1') &&
    $('#target1').prop('disabled') &&
    code.match(/["']disabled["'],( true|true)/g)
);
```

Ningún otro botón debe estar desactivado.

```js
assert($('#target2') && !$('#target2').prop('disabled'));
```

Debes usar solo jQuery para agregar estas clases al elemento.

```js
assert(!code.match(/disabled[^<]*>/g));
```

# --seed--

## --seed-contents--

```html
<script>
  $(document).ready(function() {
    $("#target1").css("color", "red");

  });
</script>

<!-- Only change code above this line -->

<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>
  <div class="row">
    <div class="col-xs-6">
      <h4>#left-well</h4>
      <div class="well" id="left-well">
        <button class="btn btn-default target" id="target1">#target1</button>
        <button class="btn btn-default target" id="target2">#target2</button>
        <button class="btn btn-default target" id="target3">#target3</button>
      </div>
    </div>
    <div class="col-xs-6">
      <h4>#right-well</h4>
      <div class="well" id="right-well">
        <button class="btn btn-default target" id="target4">#target4</button>
        <button class="btn btn-default target" id="target5">#target5</button>
        <button class="btn btn-default target" id="target6">#target6</button>
      </div>
    </div>
  </div>
</div>
```

# --solutions--

```html
<script>
  $(document).ready(function() {
    $("#target1").css("color", "red");
    $("#target1").prop("disabled", true);

  });
</script>

<!-- Only change code above this line -->

<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>
  <div class="row">
    <div class="col-xs-6">
      <h4>#left-well</h4>
      <div class="well" id="left-well">
        <button class="btn btn-default target" id="target1">#target1</button>
        <button class="btn btn-default target" id="target2">#target2</button>
        <button class="btn btn-default target" id="target3">#target3</button>
      </div>
    </div>
    <div class="col-xs-6">
      <h4>#right-well</h4>
      <div class="well" id="right-well">
        <button class="btn btn-default target" id="target4">#target4</button>
        <button class="btn btn-default target" id="target5">#target5</button>
        <button class="btn btn-default target" id="target6">#target6</button>
      </div>
    </div>
  </div>
</div>
```
