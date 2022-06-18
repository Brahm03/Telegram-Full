import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram/core/constants/color/color.dart';
import 'package:telegram/core/constants/font/styles.dart';
import 'package:telegram/core/constants/icons/iconConst.dart';
import 'package:telegram/extension/size_extension.dart';

class ChatListTileWidget extends StatelessWidget {
  const ChatListTileWidget({Key? key}) : super(key: key);

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
          "Name"
          ,
          style: FontStyles.headline4sbold,
        ),
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('phone'),
            Text('@nickname')
          ],
        ),
        trailing: Icon(IconConst.chevron)
      ),
    );
  }
}
