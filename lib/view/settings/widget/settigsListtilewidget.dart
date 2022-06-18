import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/parser.dart';
import 'package:telegram/core/constants/font/styles.dart';
import 'package:telegram/core/constants/icons/iconConst.dart';
import 'package:telegram/extension/size_extension.dart';

class SettingListtileWidget extends StatelessWidget {
  final String text;
  final Widget icon;
  const SettingListtileWidget({required this.icon, required this.text,Key? key}) : super(key: key);

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
              title:
                    Text(
                      text,
                      style: FontStyles.headline4s,
              ),
              trailing: Icon(IconConst.chevron),
            ),
            Divider(indent: context.w * 0.15,)
          ],
        ));
  }
}
