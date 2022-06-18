import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram/core/constants/color/color.dart';
import 'package:telegram/core/constants/font/styles.dart';
import 'package:telegram/core/constants/icons/iconConst.dart';

class SettingChatListileWidgets extends StatelessWidget {
  final Map user;
  const SettingChatListileWidgets({required this.user, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.white,
      alignment: Alignment.center,
      child: ListTile(
          leading: const CircleAvatar(
            radius: 30,
            backgroundColor: ColorConst.grey,
          ),
          title: Text(
            'Name',
            style: FontStyles.headline4sbold,
          ),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text('phone'), Text('@nickname')],
          ),
          trailing: Icon(IconConst.chevron)),
    );
  }
}
