import 'package:flutter/material.dart';
import 'package:telegram/core/constants/color/color.dart';
import 'package:telegram/core/constants/font/styles.dart';
import 'package:telegram/core/constants/pm/PMconst.dart';
import 'package:telegram/extension/size_extension.dart';
import 'package:telegram/widgets/appbar.dart';
import 'package:telegram/widgets/backButton.dart';

class NotifyView extends StatelessWidget {
  const NotifyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kBackground,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBarWidget(
                  leading: const BackButtonWidgets(),
                  center: const Text("Notifications", style: FontStyles.headline4s),
                  trailing: SizedBox(width: context.w * 0.15),
                ),
                const Padding(
                  padding: PMconst.medium,
                  child:
                      Text("SHOW NOTIFICATIONS FROM", style: FontStyles.headline4sgrey),
                ),
                SwitchListTile.adaptive(
                  tileColor: ColorConst.kAuthBackground,
                  title: const Text(
                    "All Accounts",
                    style: FontStyles.headline4s,
                  ),
                  value: false,
                  onChanged: (bool value) {},
                ),
                Padding(
                  padding: EdgeInsets.only(top: context.h * 0.01, left: context.h * 0.01, bottom: context.h * 0.01),
                  child: const Text(
                      "Turn this off if you want to receive notifications only from your active account.",
                      style: FontStyles.headline4s),
                ),
                const Padding(
                  padding: PMconst.medium,
                  child:
                      Text("MESSAGE NOTIFICATIONS", style: FontStyles.headline4sgrey),
                ),
                SwitchListTile.adaptive(
                  tileColor: ColorConst.kAuthBackground,
                  title: const Text(
                    "Show Notifications",
                    style: FontStyles.headline4s,
                  ),
                  value: true,
                  onChanged: (bool value) {},
                ),
                divider(),
                SwitchListTile.adaptive(
                  tileColor: ColorConst.kAuthBackground,
                  title: const Text(
                    "Message Preview",
                    style: FontStyles.headline4s,
                  ),
                  value: true,
                  onChanged: (bool value) {},
                ),
                divider(),
                const ListTile(
                  tileColor: ColorConst.kAuthBackground,
                  title: Text(
                    "Sound",
                    style: FontStyles.headline4s,
                  ),
                  trailing: Text("None", style: FontStyles.headline4sgrey),
                ),
                divider(),
                const ListTile(
                  tileColor: ColorConst.kAuthBackground,
                  title: Text(
                    "Exceptions",
                    style: FontStyles.headline4sgrey,
                  ),
                  trailing: Text("66 chats", style: FontStyles.headline4sgrey),
                ),
                divider(),
                const Padding(
                  padding: PMconst.medium,
                  child: Text("Set custom notifications for specific users.",
                      style: FontStyles.headline4sgrey),
                ),
                const Padding(
                  padding: PMconst.medium,
                  child:
                      Text("GROUP NOTIFICATIONS", style: FontStyles.headline4sgrey),
                ),
                SwitchListTile.adaptive(
                  tileColor: ColorConst.kAuthBackground,
                  title: const Text(
                    "Show Notifications",
                    style: FontStyles.headline4sgrey,
                  ),
                  value: true,
                  onChanged: (bool value) {},
                ),
                divider(),
                SwitchListTile.adaptive(
                  tileColor: ColorConst.kAuthBackground,
                  title: const Text(
                    "Message Preview",
                    style: FontStyles.headline4sgrey,
                  ),
                  value: false,
                  onChanged: (bool value) {},
                ),
                divider(),
                const ListTile(
                  tileColor: ColorConst.kAuthBackground,
                  title: Text(
                    "Sound",
                    style: FontStyles.headline4s,
                  ),
                  trailing: Text("None", style: FontStyles.headline4sgrey),
                ),
                divider(),
                const ListTile(
                  tileColor: ColorConst.kAuthBackground,
                  title: Text(
                    "Exceptions",
                    style: FontStyles.headline4s,
                  ),
                  trailing: Text("Add", style: FontStyles.headline4sgrey),
                ),
                divider(),
                const Padding(
                  padding: PMconst.medium,
                  child: Text("Set custom notifications for specific groups.",
                      style: FontStyles.headline4sgrey),
                ),
                const Padding(
                  padding: PMconst.medium,
                  child:
                      Text("CHANNEL NOTIFICATIONS", style: FontStyles.headline4sgrey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Divider divider() {
    return Divider(
              height: 1,
              color: ColorConst.kDivider,
              thickness: 1,
              indent: 16,
            );
  }
}
