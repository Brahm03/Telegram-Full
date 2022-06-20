import 'package:flutter/material.dart';
import 'package:telegram/core/constants/color/color.dart';

class CallListTilewidget extends StatelessWidget {
  Widget? trailing;
  Widget? subtitle;
  Widget title;
  Widget? leading;
  CallListTilewidget(
      {Key? key,
      this.trailing,
      this.subtitle,
      required this.title, 
      this.leading
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConst.white,
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile( 
            onTap: () {},
            leading: leading,
            title: title,
            subtitle: subtitle,
            trailing: trailing,
          ),
          const Divider(thickness: 1)
        ],
      ),
    );
  }
}