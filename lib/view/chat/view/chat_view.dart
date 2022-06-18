import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:telegram/core/constants/color/color.dart';
import 'package:telegram/core/constants/radius/radiusconst.dart';
import 'package:telegram/extension/size_extension.dart';
import 'package:telegram/widgets/appbar.dart';
import 'package:telegram/widgets/backButton.dart';
import 'package:telegram/widgets/chattextfield.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarWidget(
                trailing: const CircleAvatar(
                  backgroundColor: ColorConst.kPrimaryColor,
                  radius: RadiuConst.medium,
                ),
                center: SizedBox(
                    width: context.w * 0.3,
                    height: context.h * 0.1,
                    child: const ListTile(
                      title: Text('Susan'),
                      subtitle: Text('5 minuts'),
                    )),
                leading: BackButtonWidgets(ontap: () {})),
            Container(
              height: context.h * 0.77,
              width: context.w,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/background.png',
                  ),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(children: const[
                  BubbleSpecialThree(
                    text: 'Hi',
                    color: ColorConst.green,
                  ),
                   BubbleSpecialThree(
                    text: 'Whats up',
                    color: ColorConst.green,
                  ),
                   BubbleSpecialThree(
                    isSender: false,
                    text: 'Hi',
                  ),
                   BubbleSpecialThree(
                    text: 'How is your mood?',
                    color: ColorConst.green,
                  ),
                   BubbleSpecialThree(
                    isSender: false,
                    text: 'perfect you?',
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: context.h * 0.01,
            ),
            const ChatFieldWidgets()
          ],
        ),
      ),
      
    );
  }
}
