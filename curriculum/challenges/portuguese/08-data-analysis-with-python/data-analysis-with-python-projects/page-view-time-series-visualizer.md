---
id: 5e46f802ac417301a38fb92b
title: Visualizador de séries temporais de visitas de páginas
challengeType: 10
forumTopicId: 462369
dashedName: page-view-time-series-visualizer
---

# --description--

You will be <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-page-view-time-series-visualizer" target="_blank" rel="noopener noreferrer nofollow">working on this project with our Gitpod starter code</a>.

Ainda estamos desenvolvendo a parte instrucional interativa do currículo Python. Por enquanto, aqui estão alguns vídeos no canal do freeCodeCamp.org do YouTube que ensinarão tudo o que você precisa saber para completar este projeto:

- <a href="https://www.freecodecamp.org/news/python-for-everybody/" target="_blank" rel="noopener noreferrer nofollow">Python for Everybody Video Course</a> (14 hours)

- <a href="https://www.freecodecamp.org/news/how-to-analyze-data-with-python-pandas/" target="_blank" rel="noopener noreferrer nofollow">How to Analyze Data with Python Pandas</a> (10 hours)

# --instructions--

Para este projeto, você vai visualizar dados de série de tempo usando um gráfico de linha, um gráfico de barras e diagramas de caixa. Você usará o Pandas, o Matplotlib e o Seaborn para visualizar um dataset contendo o número de visualizações de páginas todos os dias no fórum do freeCodeCamp.org de 09/05/2016 a 03/12/2019. As visualizações de dados ajudarão você a entender os padrões nas visitas e a identificar o crescimento anual e mensal.

Use os dados para completar as seguintes tarefas:

- Use Pandas to import the data from "fcc-forum-pageviews.csv". Set the index to the `date` column.
- Limpe os dados filtrando os dias em que as visualizações de página estavam nos 2,5% maiores ou nos 2,5% menores do dataset.
- Crie uma função `draw_line_plot` que use o Matplotlib para desenhar um gráfico de linhas semelhante a "examples/Figure_1.png". O título deve ser `Daily freeCodeCamp Forum Page Views 5/2016-12/2019`. O rótulo no eixo x deve ser `Date` e o rótulo no eixo y deve ser `Page Views`.
- Crie uma função `draw_bar_plot` para desenhar um gráfico de barras semelhante a "examples/Figure_2.png". Ele deve mostrar as médias de visualizações de página diárias para cada mês agrupadas por ano. A legenda deve mostrar os rótulos dos meses e ter o título `Months`. No gráfico, o rótulo no eixo x deve ser `Years` e o rótulo no eixo y deve ser `Average Page Views`.
- Crie uma função `draw_box_plot` que use o Seaborn para desenhar um diagrama de 2 caixas adjacentes similar a "examples/Figure_3.png". Esses diagramas de caixa devem mostrar como os valores são distribuídos dentro de um determinado ano ou mês e como são comparados ao longo do tempo. O título do primeiro diagrama deve ser `Year-wise Box Plot (Trend)` (Diagrama de caixas do ano (Tendência)) e o título do segundo gráfico deve ser `Month-wise Box Plot (Seasonality)` (Diagrama de caixas do mês (Sazonalidade)). Certifique-se de que as etiquetas do mês na parte inferior comecem em `Jan` e que o eixos x e y estejam rotulados corretamente. O boilerplate inclui comandos para preparar os dados.

For each chart, make sure to use a copy of the data frame.

O boilerplate também inclui comandos para salvar e retornar a imagem.

## Development

Escreva o seu código em `time_series_visualizer.py`. Para o desenvolvimento, você pode usar `main.py` para testar o seu código.

## Testes

Os testes unitários para esse projeto estão em `test_module.py`. Importamos os testes de `test_module.py` em `main.py` para a sua conveniência.

## Envio

Copie o URL do seu projeto e envie-o para o freeCodeCamp.

# --hints--

Ele deve passar em todos os testes do Python.

```js

```

# --solutions--

```py
  # Python challenges don't need solutions,
  # because they would need to be tested against a full working project.
  # Please check our contributing guidelines to learn more.
```
