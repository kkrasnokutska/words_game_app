import 'package:flutter_app/data/list.dart';
import 'package:flutter_app/controller/filter_words.dart';
import 'package:flutter_app/controller/rest_words.dart';
import 'package:flutter/material.dart';

//Обновляем слова для игры
void updateLists() {
  currentNumber = 0;
  finalList = filterWords();
  restWords = setRestWords();
}

//Устанавливаем цвет в зависимости от правильности ответа на слово
Color setColor(Using using) {
  switch (using) {
    case Using.unused: return Colors.white;
    case Using.right: return Colors.greenAccent.withOpacity(0.5);
    case Using.wrong: return Colors.redAccent.withOpacity(0.5);

  }
}

//Устанавливаем текст в зависимости от результата игры
setText(int progress) {
  switch (progress) {
    case 100: return 'Congratulations! Your result is $progress%';
    case 60: return 'Not bad. Your result is $progress%';
    case 40: return 'You can better. Your result is $progress%';
    case 20: return 'You can better. Your result is $progress%';
    default:  return 'So sad... Your result is $progress%';
  }
}
