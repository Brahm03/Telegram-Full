import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram/core/constants/font/styles.dart';
import 'package:telegram/core/constants/icons/iconConst.dart';
import 'package:telegram/core/constants/radius/radiusconst.dart';

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
          leading: CircleAvatar(
            radius: RadiuConst.extraLarge,
            backgroundImage: AssetImage(user['image_url']),
          ),
          title: Text(
            user['name'],
            style: FontStyles.headline4sbold,
          ),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(user['main_number']), Text(user['username'])],
          ),
          trailing: Icon(IconConst.chevron)),
    );
  }
}
