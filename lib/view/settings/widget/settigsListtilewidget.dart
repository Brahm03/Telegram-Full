import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram/core/constants/font/styles.dart';
import 'package:telegram/core/constants/icons/iconConst.dart';

class SettingListtileWidget extends StatelessWidget {
  final String text;
  final Widget icon;
  const SettingListtileWidget(
      {required this.icon, required this.text, Key? key})
      : super(key: key);
           

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        color: CupertinoColors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: icon,
              title: Text(
                text,
                style: FontStyles.headline4s,
              ),
              trailing: Icon(IconConst.chevron),
            ),
          ],
        ));
  }
}


//  Align(alignment: Alignment.centerRight,child: Container(width: context.w * 0.9,height: context.h * 0.0005, color: ColorConst.grey,))