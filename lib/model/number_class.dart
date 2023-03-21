import 'package:flutter/cupertino.dart';

class model {
  final String sound;
  final String? image;
  final String enName;
  final String jpName;
  const model(
      {
        @required this.image,
      required this.enName,
      required this.jpName,
      required this.sound});
}
