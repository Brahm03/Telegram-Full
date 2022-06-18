import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:telegram/core/constants/color/color.dart';
import 'package:telegram/core/constants/font/styles.dart';
import 'package:telegram/core/constants/icons/iconConst.dart';
import 'package:telegram/core/constants/pm/PMconst.dart';
import 'package:telegram/core/constants/radius/radiusconst.dart';
import 'package:telegram/extension/size_extension.dart';
import 'package:telegram/view/settings/widget/settigsListtilewidget.dart';
import 'package:telegram/widgets/appbar.dart';
import 'package:telegram/widgets/chatListtilewidget.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarWidget(
              leading: SizedBox(
                width: context.w * 0.05,
              ),
              center: const Text(
                'Settings',
                style: FontStyles.headline4sbold,
              ),
              trailing: const Text(
                'Edit',
                style: FontStyles.headline4sblue,
              ),
            ),
            SizedBox(
              height: context.h * 0.75,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Padding(
                      padding: PMconst.medium,
                      child: CupertinoSearchTextField(),
                    ),
                    const ChatListTileWidget(),
                    SizedBox(height: context.h * 0.04),
                    SettingListtileWidget(icon: IconConst.notifications, text: 'Notification settings'),
                    SettingListtileWidget(icon: IconConst.notifications, text: 'Notification settings'),
                    

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
