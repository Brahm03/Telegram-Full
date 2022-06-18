import 'package:flutter/material.dart';
import 'package:telegram/core/constants/color/color.dart';
import 'package:telegram/core/constants/font/fontSize.dart';

class FontStyles {
  static const TextStyle headline1s = TextStyle(fontSize: FontSize.extraLarge);
  static const TextStyle headline2s = TextStyle(fontSize: FontSize.large);
  static const TextStyle headline3s = TextStyle(fontSize: FontSize.large);
  static const TextStyle headline4s = TextStyle(fontSize: FontSize.medium);
  static const TextStyle headline4sbold = TextStyle(fontSize: FontSize.medium, fontWeight: FontWeight.bold);
  static const TextStyle headline4sblue = TextStyle(fontSize: FontSize.medium, color: ColorConst.kPrimaryColor);
  static const TextStyle headline5s = TextStyle(fontSize: FontSize.medium);
  static const TextStyle headline6s = TextStyle(fontSize: FontSize.small);
  static const TextStyle headline7s = TextStyle(fontSize: FontSize.extraSmall);
}
