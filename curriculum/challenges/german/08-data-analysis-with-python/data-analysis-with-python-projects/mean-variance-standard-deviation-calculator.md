---
id: 5e46f7e5ac417301a38fb928
title: Berechnungsprogramm für Mittelwert, Varianz, und Standardabweichung
challengeType: 10
forumTopicId: 462366
dashedName: mean-variance-standard-deviation-calculator
---

# --description--

You will be <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-mean-variance-standard-deviation-calculator/" target="_blank" rel="noopener noreferrer nofollow">working on this project with our Gitpod starter code</a>.

Wir sind noch dabei, den interaktiven Teil des Python-Lehrplans zu entwickeln. Zurzeit kannst du dir lediglich einige Videos auf unserem YouTube-Channel für freeCodeCamp.org ansehen – diese bringen dir alles bei, was du wissen musst, um dieses Projekt abzuschließen:

- <a href="https://www.freecodecamp.org/news/python-for-everybody/" target="_blank" rel="noopener noreferrer nofollow">Python for Everybody Video Course</a> (14 hours)

- <a href="https://www.freecodecamp.org/news/how-to-analyze-data-with-python-pandas/" target="_blank" rel="noopener noreferrer nofollow">Wie man Daten mit Python-Pandas analysiert </a> (10 Stunden)

# --instructions--

Erstelle eine Funktion namens `calculate()` in `mean_var_std.py`, die Numpy benutzt, um den Mittelwert, die Varianz, die Standardabweichung, Max, Min, und die Summe der Zeilen, Spalten und Elemente in einer 3 x 3 Matrix anzugeben.

Die Eingabe der Funktion sollte eine Liste mit 9 Ziffern sein. Die Funktion sollte die Liste in ein 3 x 3 Numpy Array konvertieren und dann ein Wörterbuch mit dem Mittelwert, der Varianz, der Standardabweichung, Max, Min, sowie die Summe entlang beider Achsen und für die abgeflachte Matrix zurückgeben.

Das zurückgegebene Wörterbuch sollte diesem Format folgen:

```py
{
  'mean': [axis1, axis2, flattened],
  'variance': [axis1, axis2, flattened],
  'standard deviation': [axis1, axis2, flattened],
  'max': [axis1, axis2, flattened],
  'min': [axis1, axis2, flattened],
  'sum': [axis1, axis2, flattened]
}
```

Wenn eine Liste mit weniger als 9 Elementen an die Funktion übergeben wird, sollte eine `ValueError`-Ausnahme mit der Nachricht "Liste muss neun Nummern enthalten." auftauchen. Die Werte im zurückgegebenen Wörterbuch sollten Listen und keine Numpy Arrays sein.

Zum Beispiel sollte `calculate([0,1,2,3,4,5,6,7,8])` zurückgeben:

```py
{
  'mean': [[3.0, 4.0, 5.0], [1.0, 4.0, 7.0], 4.0],
  'variance': [[6.0, 6.0, 6.0], [0.6666666666666666, 0.6666666666666666, 0.6666666666666666], 6.666666666666667],
  'standard deviation': [[2.449489742783178, 2.449489742783178, 2.449489742783178], [0.816496580927726, 0.816496580927726, 0.816496580927726], 2.581988897471611],
  'max': [[6, 7, 8], [2, 5, 8], 8],
  'min': [[0, 1, 2], [0, 3, 6], 0],
  'sum': [[9, 12, 15], [3, 12, 21], 36]
}
```

## Development

Schreibe deinen Code in `mean_var_std.py`. Für die Entwicklung kannst du `main.py` verwenden, um deinen Code zu testen. In order to run your code, type `python3 main.py` into the GitPod terminal and hit enter. This will cause the included CPython interpreter to run the `main.py` file.

## Prüfung

Die Unit-Tests für dieses Projekt sind in `test_module.py`. Wir haben die Tests von `test_module.py` zu `main.py` bereits für dich importiert.

## Einreichung

Kopiere die URL deines Projekts und sende sie an freeCodeCamp.

# --hints--

Er sollte alle Python-Tests bestehen.

```js

```

# --solutions--

```py
  # Python challenges don't need solutions,
  # because they would need to be tested against a full working project.
  # Please check our contributing guidelines to learn more.
```
