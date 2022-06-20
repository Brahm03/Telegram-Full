import 'package:flutter/material.dart';
import 'package:telegram/core/constants/color/color.dart';
import 'package:telegram/core/constants/font/styles.dart';

class ListTileWidget extends StatelessWidget {
  final VoidCallback? ontap;
  final String text;
  final Widget? subtitle;
  final Widget? leading;
  final Widget? trailing;
  const ListTileWidget(
      {this.subtitle,
      this.leading,
      required this.text,
      this.trailing,
      this.ontap,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontap,
      tileColor: ColorConst.kAuthBackground,
      title: Text(
        text,
        style: FontStyles.headline4s,
      ),
      leading: leading,
      subtitle: subtitle,
      trailing: trailing,
    );
  }
}
