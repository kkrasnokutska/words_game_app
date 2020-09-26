import 'package:flutter_app/data/list.dart';

//Номер играющего слова
var currentNumber = 0;

//Список неиспользуемых еще слов
List<Word> setUnusedWords() {
  return words.where((i) => i.using == Using.unused).toList();
}

//Список неправильных слов
List<Word> setWrongWords() {
  return words.where((i) => i.using == Using.wrong).toList();
}

//Список правильных слов
List<Word> setRightWords() {
  return words.where((i) => i.using == Using.right).toList();
}

// Генерируем лист слов, которые будут в игре
List<Word> filterWords() {

  List<Word> unusedWords = setUnusedWords();
  List<Word> wrongWords = setWrongWords();
  List<Word> rightWords = setRightWords();
  List<Word> finalList = [];
  int count = 5; // Количество слов, которые осталось добавить лист

  // Исследуем слова, которые не использовались
  if (unusedWords.length >= (count)) {
      for (var i = 0; i < 5; ++i) {
        finalList.add(unusedWords[i]);
      }
      return (finalList);
    }
  for (var i = 0; i < unusedWords.length; ++i) {
      finalList.add(unusedWords[i]);
    }
  count -= unusedWords.length;

  // Исследуем слова, на которые неправильно ответили
  if (wrongWords.length >= (count)) {
      for (var i = 0; i < count; ++i) {
        finalList.add(wrongWords[i]);
      }
      return (finalList);
  }
  for (var i = 0; i < wrongWords.length; ++i) {
      finalList.add(wrongWords[i]);
  }
  count -= wrongWords.length;

  // Исследуем оставшиеся слова
  for (var i = 0; i < count; ++i) {
      finalList.add(rightWords[i]);
  }
  return(finalList);
}

//Окончательный список слов, которые будут в игре
List<Word> finalList;




