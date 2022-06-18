import 'package:flutter/cupertino.dart';
import 'package:telegram/core/constants/color/color.dart';
import 'package:telegram/core/constants/icons/iconConst.dart';
import 'package:telegram/core/constants/radius/radiusconst.dart';
import 'package:telegram/extension/size_extension.dart';

class ChatFieldWidgets extends StatelessWidget {
  const ChatFieldWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(child: IconConst.shape),
        SizedBox(
            width: context.w * 0.8,
            child: CupertinoTextField(
              textInputAction: TextInputAction.send,
              suffix: IconConst.message,
              decoration: BoxDecoration(
                  border: Border.all(color: ColorConst.grey, width: 1),
                  borderRadius: BorderRadius.circular(RadiuConst.medium)),
            )),
        IconConst.microphone
      ],
    );
  }
}
