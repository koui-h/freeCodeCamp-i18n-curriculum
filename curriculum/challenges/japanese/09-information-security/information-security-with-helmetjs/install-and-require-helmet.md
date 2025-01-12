---
id: 587d8247367417b2b2512c36
title: Helmet を install して require する
challengeType: 2
forumTopicId: 301581
dashedName: install-and-require-helmet
---

# --description--

これらのチャレンジに取り組むにあたり、以下の方法のうち 1 つを用いてコードを記述します。

- <a href="https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">GitHub リポジトリ</a>をクローンし、ローカル環境でチャレンジを完了させる。
- Use <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">our Gitpod starter project</a> to complete these challenges. Learn <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">how to share your Gitpod workspace to get help</a>.
- 使い慣れたサイトビルダーを使用してプロジェクトを完了させる。 必ず GitHub リポジトリのすべてのファイルを取り込む。

Helmet を使用すると、さまざまな HTTP ヘッダーを設定することができ、Express アプリケーションのセキュリティを確保するのに役立ちます。

# --instructions--

これらのレッスンで使用するコードはすべて、`myApp.js`ファイルの中の、最初に用意されているコードの間に記述します。 あらかじめ記述されているコードを変更したり削除したりしないでください。

すでに Helmet バージョン `3.21.3` がインストールされているので、`myApp.js` で `helmet` として require します。

# --hints--

`helmet` のバージョン `3.21.3` を `package.json` に含める必要があります。

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/package.json').then(
    (data) => {
      const packJson = JSON.parse(data);
      const helmet = packJson.dependencies.helmet;
      assert(helmet === '3.21.3' || helmet === '^3.21.3');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

