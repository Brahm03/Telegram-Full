import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram/core/constants/color/color.dart';
import 'package:telegram/extension/size_extension.dart';

class AppBarWidget extends StatelessWidget {
  final Widget leading;
  final Widget center;
  final Widget trailing;
  final Color color;
  const AppBarWidget(
      {this.color = ColorConst.white,this.trailing = const SizedBox(),
      this.center = const SizedBox(),
      required this.leading,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: context.h * 0.07,
      width: context.w,
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.w * 0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [leading, center, trailing],
          ),
        ),
      ),
    );
  }
}
