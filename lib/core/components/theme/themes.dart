import 'package:flutter/material.dart';
import 'package:telegram/core/constants/color/color.dart';

class Allthemes {
  static final Allthemes _instance = Allthemes.init();
  static Allthemes get instance => _instance;
  Allthemes.init();

  get light => ThemeData(
    scaffoldBackgroundColor: ColorConst.white,
    colorScheme: const ColorScheme.light(
      primary: ColorConst.kPrimaryColor,
      brightness: Brightness.light
    )
  );

  get dark => ThemeData(
    colorScheme: const ColorScheme.dark(
      primary: ColorConst.kPrimaryColor,
      brightness: Brightness.dark
    )
  );
}
