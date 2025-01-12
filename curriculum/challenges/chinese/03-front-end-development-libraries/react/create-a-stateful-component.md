---
id: 5a24c314108439a4d4036170
title: 创建一个有状态的组件
challengeType: 6
forumTopicId: 301391
dashedName: create-a-stateful-component
---

# --description--

One of the most important topics in React is `state`. State consists of any data your application needs to know about, that can change over time. You want your apps to respond to state changes and present an updated UI when necessary. React offers a nice solution for the state management of modern web applications.

可以在类组件的 `constructor` 上声明 `state` 属性来在 React 组件中创建 state， 它在创建时使用 `state` 初始化组件。 `state` 属性必须设置为 JavaScript `object`（对象）。 声明如下：

```jsx
this.state = {

}
```

可以在组件的整个生命周期内访问 `state` 对象， 可以更新它、在 UI 中渲染它，也可以将其作为 props 传递给子组件。 `state` 对象的使用可以很简单，亦可以很复杂，就看你怎么用了。 请注意，必须通过扩展 `React.Component` 来创建类组件，以便像这样创建 `state`。

# --instructions--

在代码编辑器里，有一个组件尝试渲染 `state` 中的 `firstName` 属性。 但是 `state` 还没有定义。 在 `constructor` 中使用 `state` 初始化这个组件，并将你的名字赋值给 `firstName` 属性。

# --hints--

`StatefulComponent` 应该存在并被渲染。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(
      React.createElement(StatefulComponent)
    );
    return mockedComponent.find('StatefulComponent').length === 1;
  })()
);
```

`StatefulComponent` 应该渲染一个 `div` 元素和一个 `h1` 元素。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(
      React.createElement(StatefulComponent)
    );
    return (
      mockedComponent.find('div').length === 1 &&
      mockedComponent.find('h1').length === 1
    );
  })()
);
```

`StatefulComponent` 中的 state 应该初始化为被设置成字符串的 `firstName` 属性。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(
      React.createElement(StatefulComponent)
    );
    const initialState = mockedComponent.state();
    return (
      typeof initialState === 'object' && typeof initialState.firstName === 'string'
    );
  })()
);
```

`StatefulComponent` 状态中的属性 `firstName` 应该呈现在 `h1` 元素中。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(
      React.createElement(StatefulComponent)
    );
    const initialState = mockedComponent.state();
    return mockedComponent.find('h1').text() === initialState.firstName;
  })()
);
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<StatefulComponent />, document.getElementById('root'))
```

## --seed-contents--

```jsx
class StatefulComponent extends React.Component {
  constructor(props) {
    super(props);
    // Only change code below this line

    // Only change code above this line
  }
  render() {
    return (
      <div>
        <h1>{this.state.firstName}</h1>
      </div>
    );
  }
};
```

# --solutions--

```jsx
class StatefulComponent extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      firstName: 'freeCodeCamp!'
    }
  }
  render() {
    return (
      <div>
        <h1>{this.state.firstName}</h1>
      </div>
    );
  }
};
```
