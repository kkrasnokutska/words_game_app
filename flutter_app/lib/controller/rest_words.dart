import 'package:flutter_app/data/list.dart';
import 'package:flutter_app/controller/filter_words.dart';
import 'dart:math';

//Проверка на наличие одинаковых слов
bool check(List list) {
  final count = list.length;
  for (int i = 0; i<count; ++i) {
    for (int j = i+1; j<count; ++j) {
      if (list[i] == list[j]) return false;
    }
  }
  return true;
}

//Подбираем 3 оставшихся слова для игры
List<Word> setRestWords() {
  List<Word> restWords = [];
  Random random = new Random();
  var numberOfWords;
  do {
    numberOfWords = [];
    numberOfWords = new List.generate(3, (_) => random.nextInt(words.length));
    restWords = [
      words[numberOfWords[0]],
      words[numberOfWords[1]],
      words[numberOfWords[2]]
    ];
    restWords.add(finalList[currentNumber]);
  } while (check(restWords) == false);
  restWords.shuffle();
  return(restWords);
}

List<Word> restWords;