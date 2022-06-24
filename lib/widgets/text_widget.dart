import 'package:flutter/material.dart';

class TextWidget {
  static Text text(String text, { Color? color, double? size, FontWeight? fontWeight}) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? Colors.black,
        fontSize: size ?? 17,
        fontWeight:fontWeight ?? FontWeight.w400
      ),
    );
  }
}
