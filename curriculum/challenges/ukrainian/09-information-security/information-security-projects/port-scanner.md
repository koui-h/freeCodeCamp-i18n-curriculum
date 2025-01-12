---
id: 5e46f979ac417301a38fb932
title: Сканер портів
challengeType: 10
forumTopicId: 462372
helpCategory: Python
dashedName: port-scanner
---

# --description--

You will be <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-port-scanner" target="_blank" rel="noopener noreferrer nofollow">working on this project with our Gitpod starter code</a>. Learn <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">how to share your Gitpod workspace to get help</a>.

Ми все ще розробляємо інтерактивну частину навчального курсу Python. Наразі є декілька відео на ютуб-каналі freeCodeCamp.org, які навчать всього необхідного для виконання цього проєкту:

- <a href="https://www.freecodecamp.org/news/python-for-everybody/" target="_blank" rel="noopener noreferrer nofollow">Python for Everybody Video Course</a> (14 hours)

- <a href="https://www.freecodecamp.org/news/learn-python-basics-in-depth-video-course/" target="_blank" rel="noopener noreferrer nofollow">Learn Python Basics in Depth</a> (4 годин)

- <a href="https://www.freecodecamp.org/news/intermediate-python-course/" target="_blank" rel="noopener noreferrer nofollow">Intermediate Python Course</a> (6 годин)

# --instructions--

Створіть сканер портів за допомогою Python.

У файлі `port_scanner.py` створіть функцію під назвою `get_open_ports`, яка приймає аргументи `target` та `port_range`. `target` може бути URL-адресою або IP-адресою. `port_range` є списком із двох чисел, які позначають перше та останнє число діапазону портів для перевірки.

Ось приклади того, як можна викликати функцію:

```py
get_open_ports("209.216.230.240", [440, 445])
get_open_ports("www.stackoverflow.com", [79, 82])
```

Функція повинна повернути список відкритих портів у вказаному діапазоні.

Функція `get_open_ports` також повинна приймати необов’язковий третій аргумент `True`, щоб вказати режим «Детальний». Якщо це встановлено на True, функція повинна повертати описовий рядок замість списку портів.

Ось формат рядка, який повинен бути повернутий у детальному режимі (текст всередині `{}` вказує на інформацію, яка має з’явитися):

```bash
Open ports for {URL} ({IP address})
PORT     SERVICE
{port}   {service name}
{port}   {service name}
```

Ви можете використати словник у `common_ports.py`, щоб отримати правильну назву сервісу для кожного порту.

Наприклад, якщо функція викликається так:

```py
port_scanner.get_open_ports("scanme.nmap.org", [20, 80], True)
```

Вона повинна повернути наступне:

```bash
Open ports for scanme.nmap.org (45.33.32.156)
PORT     SERVICE
22       ssh
80       http
```

Обов’язково додайте правильні пробіли та символи нового рядка.

Якщо адреса ресурсу (URL), передана у функцію `get_open_ports`, недійсна, то функція повинна повернути рядок «Error: Invalid hostname».

Якщо IP-адреса, передана у функцію `get_open_ports`, недійсна, то функція повинна повернути рядок «Error:  Invalid IP address».

## Development

Запишіть свій код у `port_scanner.py`. Для розробки ви можете використати `main.py`, щоб протестувати свій код.

## Тестування

Модульні тести для цього проєкту знаходяться в `test_module.py`. Ми імпортували тести з `test_module.py` до `main.py` для вашої зручності.

## Відправка

Скопіюйте URL-адресу свого проєкту та відправте її до freeCodeCamp.

# --hints--

Проєкт повинен пройти усі тести Python.

```js

```

# --solutions--

```py
  # Python challenges don't need solutions,
  # because they would need to be tested against a full working project.
  # Please check our contributing guidelines to learn more.
```
