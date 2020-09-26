import 'package:meta/meta.dart';
import 'package:flutter/material.dart';

//Возможные варианты использования
enum Using {
  unused,
  wrong,
  right
}

//Класс слова
class Word {
  final String name;
  final String translation;
  Using using = Using.unused;

  void setName(Using using) {
  this.using = using;
  }

  Word({
    @required this.name,
    @required this.translation,
  });
}

//Список слов
List<Word> words = [
  Word(name: "Cat", translation: "Кот"),
  Word(name: "Dog", translation: "Собака"),
  Word(name: "Flat", translation: "Квартира"),
  Word(name: "Bird", translation: "Птица"),
  Word(name: "Cow", translation: "Корова"),
  Word(name: "Horse", translation: "Лошадь"),
  Word(name: "House", translation: "Дом"),
  Word(name: "Car", translation: "Машина"),
  Word(name: "Phone", translation: "Телефон"),
  Word(name: "Ring", translation: "Кольцо"),
  Word(name: "Paper", translation: "Бумага"),
  Word(name: "Book", translation: "Книга"),
  Word(name: "Pen", translation: "Ручка"),
  Word(name: "Apple", translation: "Яблоко"),
  Word(name: "Orange", translation: "Апельсин"),
  Word(name: "Peach", translation: "Персик"),
  Word(name: "Banana", translation: "Банан"),
  Word(name: "Water", translation: "Вода"),
  Word(name: "Juice", translation: "Сок"),
  Word(name: "Finger", translation: "Палец"),
];

//Список цветов слов
List<Color> widgetColor = [
  Color.fromRGBO(240, 240, 240, 1.0),
  Color.fromRGBO(240, 240, 240, 1.0),
  Color.fromRGBO(240, 240, 240, 1.0),
  Color.fromRGBO(240, 240, 240, 1.0)
];

//Список цветов иконок
List<Color> iconColor = [
  Colors.blue,
  Colors.blue,
  Colors.blue,
  Colors.blue
];




