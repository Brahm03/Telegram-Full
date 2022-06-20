import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';
import 'package:telegram/core/constants/color/color.dart';
import 'package:telegram/core/constants/radius/radiusconst.dart';
import 'package:telegram/core/init/navigator/navigation.dart';
import 'package:telegram/extension/size_extension.dart';
import 'package:telegram/widgets/appbar.dart';
import 'package:telegram/widgets/backButton.dart';
import 'package:telegram/widgets/chattextfield.dart';

class ChatTypingView extends StatelessWidget {
  final List data;
  const ChatTypingView({required this.data, Key? key}) : super(key: key);

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
                trailing:  CircleAvatar(
                  backgroundImage:AssetImage(data[1]['image_url']),
                  radius: RadiuConst.medium,
                ),
                center: SizedBox(
                    width: context.w * 0.3,
                    height: context.h * 0.1,
                    child:  ListTile(
                      title: Text(data[1]['name']),
                      subtitle: Text(data[1]['status']),
                    )),
                leading: BackButtonWidgets(ontap: () => NavigationService.instance.pop(''))),
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
                child: Column(children:  [
                  const BubbleSpecialThree(
                    text: 'Hi',
                    color: ColorConst.green,
                  ),
                  const BubbleSpecialThree(
                    text: 'Whats up',
                    color: ColorConst.green,
                  ),
                  const BubbleSpecialThree(
                    isSender: false,
                    text: 'Hi',
                  ),
                  const BubbleSpecialThree(
                    text: 'How is your mood?',
                    color: ColorConst.green,
                  ),
                  const BubbleSpecialThree(
                    isSender: false,
                    text: 'perfect you?',
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset('assets/icons/picmessage.png'),
                  )
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
