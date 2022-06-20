import 'package:flutter/material.dart';
import 'package:telegram/core/constants/color/color.dart';
import 'package:telegram/core/constants/font/styles.dart';
import 'package:telegram/core/constants/pm/PMconst.dart';
import 'package:telegram/core/init/navigator/navigation.dart';
import 'package:telegram/extension/size_extension.dart';
import 'package:telegram/widgets/appbar.dart';

class NotifyView extends StatelessWidget {
  NotifyView({Key? key}) : super(key: key);

  bool _allAccounts = true;
  bool _showNotificationsM = true;
  bool _showNotificationsG = false;
  bool _messagePreviewM = false;
  bool _messagePreviewG = false;

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
                  leading: TextButton(
                    onPressed: () => NavigationService.instance.pop(''),
                    child: const Text("Back"),
                  ),
                  center: Center(
                    child: Text("Notifications", style: FontStyles.headline4s),
                  ),
                  trailing: SizedBox(width: context.w * 0.06),
                ),
                Padding(
                  padding: PMconst.medium,
                  child:
                      Text("SHOW NOTIFICATIONS FROM", style: FontStyles.headline4sgrey),
                ),
                SwitchListTile(
                  tileColor: ColorConst.kAuthBackground,
                  title: Text(
                    "All Accounts",
                    style: FontStyles.headline4s,
                  ),
                  value: _allAccounts,
                  onChanged: (bool value) {},
                ),
                Padding(
                  padding: EdgeInsets.only(top: context.h * 0.01, left: context.h * 0.01, bottom: context.h * 0.01),
                  child: Text(
                      "Turn this off if you want to receive notifications only from your active account.",
                      style: FontStyles.headline4s),
                ),
                Padding(
                  padding: PMconst.medium,
                  child:
                      Text("MESSAGE NOTIFICATIONS", style: FontStyles.headline4sgrey),
                ),
                SwitchListTile(
                  tileColor: ColorConst.kAuthBackground,
                  title: Text(
                    "Show Notifications",
                    style: FontStyles.headline4s,
                  ),
                  value: _showNotificationsM,
                  onChanged: (bool value) {},
                ),
                divider(),
                SwitchListTile(
                  tileColor: ColorConst.kAuthBackground,
                  title: Text(
                    "Message Preview",
                    style: FontStyles.headline4s,
                  ),
                  value: _messagePreviewM,
                  onChanged: (bool value) {},
                ),
                divider(),
                ListTile(
                  tileColor: ColorConst.kAuthBackground,
                  title: Text(
                    "Sound",
                    style: FontStyles.headline4s,
                  ),
                  trailing: Text("None", style: FontStyles.headline4sgrey),
                ),
                divider(),
                ListTile(
                  tileColor: ColorConst.kAuthBackground,
                  title: Text(
                    "Exceptions",
                    style: FontStyles.headline4sgrey,
                  ),
                  trailing: Text("66 chats", style: FontStyles.headline4sgrey),
                ),
                divider(),
                Padding(
                  padding: PMconst.medium,
                  child: Text("Set custom notifications for specific users.",
                      style: FontStyles.headline4sgrey),
                ),
                Padding(
                  padding: PMconst.medium,
                  child:
                      Text("GROUP NOTIFICATIONS", style: FontStyles.headline4sgrey),
                ),
                SwitchListTile(
                  tileColor: ColorConst.kAuthBackground,
                  title: Text(
                    "Show Notifications",
                    style: FontStyles.headline4sgrey,
                  ),
                  value: _showNotificationsG,
                  onChanged: (bool value) {},
                ),
                divider(),
                SwitchListTile(
                  tileColor: ColorConst.kAuthBackground,
                  title: Text(
                    "Message Preview",
                    style: FontStyles.headline4sgrey,
                  ),
                  value: _messagePreviewG,
                  onChanged: (bool value) {},
                ),
                divider(),
                ListTile(
                  tileColor: ColorConst.kAuthBackground,
                  title: Text(
                    "Sound",
                    style: FontStyles.headline4s,
                  ),
                  trailing: Text("None", style: FontStyles.headline4sgrey),
                ),
                divider(),
                ListTile(
                  tileColor: ColorConst.kAuthBackground,
                  title: Text(
                    "Exceptions",
                    style: FontStyles.headline4s,
                  ),
                  trailing: Text("Add", style: FontStyles.headline4sgrey),
                ),
                divider(),
                Padding(
                  padding: PMconst.medium,
                  child: Text("Set custom notifications for specific groups.",
                      style: FontStyles.headline4sgrey),
                ),
                Padding(
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
