import 'package:flutter/material.dart';
import 'package:telegram/core/constants/color/color.dart';
import 'package:telegram/core/constants/font/fontSize.dart';
import 'package:telegram/core/constants/font/styles.dart';

class BackButtonWidgets extends StatelessWidget {
  final VoidCallback ontap;
  final String text;
  final Icon icon;
  const BackButtonWidgets({this.icon = const Icon(
            Icons.chevron_left_outlined,
            size: FontSize.extraLarge,
            color: ColorConst.kPrimaryColor,
          ),this.text = 'Back', required this.ontap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Row(
        children: [
          icon,
          Text(
            text,
            style: FontStyles.headline4sblue,
          ),
        ],
      ),
    );
  }
}