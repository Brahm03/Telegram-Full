import 'package:flutter/material.dart';
import 'package:telegram/core/constants/color/color.dart';
import 'package:telegram/core/constants/font/fontSize.dart';
import 'package:telegram/core/constants/font/styles.dart';
import 'package:telegram/core/init/navigator/navigation.dart';

class BackButtonWidgets extends StatelessWidget {
  final String text;
  final Icon icon;
  const BackButtonWidgets({this.icon = const Icon(
            Icons.chevron_left_outlined,
            size: FontSize.extraLarge,
            color: ColorConst.kPrimaryColor,
          ),this.text = 'Back', Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => NavigationService.instance.pop(),
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