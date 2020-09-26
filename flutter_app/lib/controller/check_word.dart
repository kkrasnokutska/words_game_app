import 'package:flutter_app/data/list.dart';
import 'package:flutter_app/controller/filter_words.dart';
import 'package:flutter_app/controller/rest_words.dart';
import 'package:flutter/material.dart';


int progress = 0; //Прогресс в игре
bool answer; //Правильность ответа

//Изменяем цвет слова в зависимости от правильности ответа
void changeColor (int numberOfWord) {
  int current = words.indexOf(finalList[currentNumber]);

  //Правильный
  if (restWords[numberOfWord].translation ==
      finalList[currentNumber].translation) {
    words[current].setName(Using.right);
    widgetColor[numberOfWord] = Colors.greenAccent;
    iconColor[numberOfWord] = Colors.greenAccent;
    progress += 20;
    answer = true;
  }
  //Неправильный
  else {
    words[current].setName(Using.wrong);
    widgetColor[numberOfWord] = Colors.redAccent;
    iconColor[numberOfWord] = Colors.redAccent;
    answer = false;
  }
}


int chance = 0;//Номер попытки

//Проверяем номер попытки и правильность ответа
bool checkWords(numberOfWord) {
  widgetColor[numberOfWord] = Color.fromRGBO(240, 240, 240, 1.0);
  iconColor[numberOfWord] = Colors.blue;
  if (answer == false && chance == 0) { ++chance; return false; }
  else {
    if (currentNumber != 4 ) {
      chance = 0;
      ++currentNumber;
      restWords = setRestWords();
      return false;
    } else {
      chance = 0;
      return true;
    }

  }
}

