---
id: 587d8249367417b2b2512c40
title: Налаштуйте Helmet, використовуючи «батьківське» проміжне ПЗ helmet()
challengeType: 2
forumTopicId: 301575
dashedName: configure-helmet-using-the-parent-helmet-middleware
---

# --description--

As a reminder, this project is being built upon the following starter project on <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">Gitpod</a>, or cloned from <a href="https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>. Learn <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">how to share your Gitpod workspace to get help</a>.

`app.use(helmet())` автоматично міститиме в собі вищезгадане проміжне програмне забезпечення, окрім `noCache()` та `contentSecurityPolicy()`, але їх можна увімкнути в разі потреби. Ви також можете відключити або налаштувати будь-яке інше проміжне програмне забезпечення самостійно, використовуючи об’єкт конфігурації.

**Наприклад:**

```js
app.use(helmet({
  frameguard: {         // configure
    action: 'deny'
  },
  contentSecurityPolicy: {    // enable and configure
    directives: {
      defaultSrc: ["'self'"],
      styleSrc: ['style.com'],
    }
  },
  dnsPrefetchControl: false     // disable
}))
```

Ми представили кожне проміжне програмне забезпечення окремо в навчальних цілях і для полегшення тестування. «Батьківське» проміжне ПЗ `helmet()` легко використовувати у реальних проєктах.

# --hints--

тестів немає: це описове завдання

```js
assert(true);
```

