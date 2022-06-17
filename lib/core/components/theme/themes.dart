import 'package:flutter/material.dart';
import 'package:telegram/core/constants/color/color.dart';

class Allthemes {
  static final Allthemes _instance = Allthemes.init();
  static Allthemes get instance => _instance;
  Allthemes.init();

  get light => ThemeData(
    colorScheme: ColorScheme.light(
      primary: ColorConst.instance.kPrimaryColor,
      brightness: Brightness.light
    )
  );

  get dark => ThemeData(
    colorScheme: ColorScheme.dark(
      primary: ColorConst.instance.kPrimaryColor,
      brightness: Brightness.dark
    )
  );
}
