import 'package:meta/meta.dart';

class Word {
  int id;

  final String name;
  final String translation;

  Word({
    @required this.name,
    @required this.translation,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'translation': translation,
    };
  }

  static Word fromMap(Map<String, dynamic> map) {
    return Word(
      name: map['name'],
      translation: map['translation'],
    );
  }
}