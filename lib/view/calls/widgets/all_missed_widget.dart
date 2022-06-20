import 'package:flutter/material.dart';
import 'package:telegram/core/components/styles/boxOnlyDecoration.dart';
import 'package:telegram/core/constants/color/color.dart';
import 'package:telegram/core/constants/font/styles.dart';
import 'package:telegram/extension/size_extension.dart';

class AllMissedWidget extends StatelessWidget {
  const AllMissedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: context.w * 0.4,
            height: context.h * 0.05,
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(right: context.w * 0.02),
            decoration: BoxOnlyDecoration.decor(ColorConst.grey,
                topLeft: 10,
                topRight: 10.0,
                bottomLeft: 10.0,
                bottomRight: 10.0),
            child: const Text(
              "Missed",
              style: FontStyles.headline4s,
            )),
        Positioned(
          top: context.h * 0.005,
          left: context.w * 0.01,
          child: Container(
            alignment: Alignment.center,
            width: context.w * 0.2,
            height: context.h * 0.04,
            decoration: BoxOnlyDecoration.decor(ColorConst.white,
                topLeft: 10,
                topRight: 10.0,
                bottomLeft: 10.0,
                bottomRight: 10.0),
            child: const Text(
              "All",
              style: FontStyles.headline4s,
            ),
          ),
        )
      ],
    );
  }
}
