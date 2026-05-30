# Лабораторная работа №4. Flutter: списки, модели данных и карточки

**Студент:** Березкин Роман, Зубрева Эля
**Группа:** ИСП-233
**Дата сдачи:** 30.05.2026

## О приложении

Каталог компьютерных игр с возможностью просмотра списка, детальной информации и рейтинга.

**Тематика:** Компьютерные игры

## Что изучил в ходе работы

1. Создание модели данных - научился создавать классы-модели с именованными параметрами и неизменяемыми полями.

2. ListView.builder - освоил виртуализированные списки, которые создают только видимые элементы и экономят память.

3. Виджет Card и InkWell - научился создавать переиспользуемые карточки с анимацией нажатия.

4. Работа с ассетами - подключил изображения в проект и зарегистрировал их в pubspec.yaml.

5. AppBar с actions - добавил счётчик элементов в верхнюю панель приложения.

## Скриншот приложения

![Скриншот приложения](img/step4_БерезкинЗубрева.png)

## Инструкция по запуску

### Требования
- Установленный Flutter SDK
- Android Studio / VS Code
- Эмулятор Android / iOS / браузер Chrome

### Шаги для запуска

1. Клонировать репозиторий
   git clone <URL вашего репозитория>
   cd Flutter_Lab4

2. Установить зависимости
   flutter pub get

3. Запустить приложение
   flutter run

4. Выбрать устройство
   - Нажмите 1 для Android эмулятора
   - Нажмите 2 для Windows
   - Нажмите 3 для Chrome (веб-версия)

### Горячие клавиши во время работы
- r - горячая перезагрузка
- R - полная перезагрузка
- q - выход из приложения

## Структура проекта

lib/
├── models/
│   ├── anime.dart
│   └── anime_data.dart
├── anime_card.dart
├── anime_list.dart
└── main.dart

assets/
└── images/
    ├── game1.jpg
    ├── game2.jpg
    ├── game3.jpg
    ├── game4.jpg
    ├── game5.jpg
    ├── game6.jpg
    ├── game7.jpg
    ├── game8.jpg
    ├── game9.jpg
    └── game10.jpg

## Список игр в каталоге

1. The Witcher 3: Wild Hunt - 2015 - 9.5 - CD Projekt Red
2. Cyberpunk 2077 - 2020 - 8.5 - CD Projekt Red
3. Red Dead Redemption 2 - 2018 - 9.8 - Rockstar Games
4. God of War Ragnarök - 2022 - 9.6 - Santa Monica Studio
5. Elden Ring - 2022 - 9.7 - FromSoftware
6. Zelda: Tears of the Kingdom - 2023 - 9.7 - Nintendo
7. Baldur's Gate 3 - 2023 - 9.8 - Larian Studios
8. Hollow Knight - 2017 - 9.4 - Team Cherry
9. Disco Elysium - 2019 - 9.6 - ZA/UM
10. Stardew Valley - 2016 - 9.2 - ConcernedApe

## Использованные технологии

- Flutter - фреймворк для кроссплатформенной разработки
- Dart - язык программирования
- Material Design - система дизайна от Google

## Ссылки

- Репозиторий на GitHub: https://github.com/pomarulit007-cyber/Flutter_Lab4
- Документация Flutter: https://flutter.dev/docs
