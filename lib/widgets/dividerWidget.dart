import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:telegram/core/constants/color/color.dart';

class DividerWidgets extends StatelessWidget {
  const DividerWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 1,
      color: ColorConst.kDivider,
      thickness: 1,
      indent: 16,
    );
  }
}
