import 'package:flutter/material.dart';

class ColorConst {
  static final ColorConst _instance = ColorConst.init();
  static ColorConst get instance => _instance;
  ColorConst.init();

  Color kPrimaryColor = const Color(0xff007AFF);

}
