import 'package:flutter/material.dart';
import 'package:telegram/core/constants/color/color.dart';
import 'package:telegram/core/constants/font/styles.dart';
import 'package:telegram/core/constants/icons/iconConst.dart';
import 'package:telegram/core/constants/pm/PMconst.dart';
import 'package:telegram/extension/size_extension.dart';
import 'package:telegram/widgets/appbar.dart';
import 'package:telegram/widgets/backButton.dart';
import 'package:telegram/widgets/dividerWidget.dart';
import 'package:telegram/widgets/listTile_widget.dart';

class PrivacyAndSecurity extends StatelessWidget {
  const PrivacyAndSecurity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return scaffold(context);
  }

  Scaffold scaffold(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kBackground,
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(
              color: ColorConst.kAppBar,
              leading: const BackButtonWidgets(),
              center: const Text("Privacy and Security",
                  style: FontStyles.headline4s),
              trailing: SizedBox(width: context.w * 0.15),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: context.h * 0.01),
                  ListTileWidget(
                    leading: IconConst.blockedUser,
                    text: "Blocked Users",
                    trailing: SizedBox(
                      width: context.w * 40 / 375,
                      height: context.h * 0.1,
                      child: Row(
                        children: [
                          const Text(
                            "9",
                            style: FontStyles.headline4sgrey,
                          ),
                          Icon(IconConst.chevron),
                        ],
                      ),
                    ),
                  ),
                  const DividerWidgets(),
                  ListTileWidget(
                    leading: IconConst.activeSessions,
                    text: "Active Sessions",
                    trailing: SizedBox(
                      width: context.w * 40 / 375,
                      height: context.h * 0.04,
                      child: Row(
                        children: [
                          const Text(
                            "2",
                            style: FontStyles.headline4sgrey,
                          ),
                          Icon(IconConst.chevron),
                        ],
                      ),
                    ),
                  ),
                  const DividerWidgets(),
                  ListTileWidget(
                    leading: IconConst.passcodeAndFaceID,
                    text: "Passcode & Face ID",
                    trailing: SizedBox(
                      width: context.w * 57 / 375,
                      height: context.h * 0.03,
                      child: Row(
                        children: [
                          const Text(
                            "Off",
                            style: FontStyles.headline4sgrey,
                          ),
                          Icon(IconConst.chevron),
                        ],
                      ),
                    ),
                  ),
                  const DividerWidgets(),
                  ListTileWidget(
                    leading: IconConst.twostepVerification,
                    text: "Two-Step Verification",
                    trailing: SizedBox(
                      width: context.w * 53 / 375,
                      height: context.h * 0.04,
                      child: Row(
                        children: [
                          const Text(
                            "On",
                            style: FontStyles.headline4sgrey,
                          ),
                          Icon(IconConst.chevron),
                        ],
                      ),
                    ),
                  ),
                  const DividerWidgets(),
                  const Padding(
                    padding: PMconst.medium,
                    child: Text(
                      'PRIVACY',
                      style: FontStyles.headline4sgrey,
                    ),
                  ),
                  ListTileWidget(
                    text: "Phone Number",
                    trailing: SizedBox(
                      width: context.w * 139 / 375,
                      height: context.h * 0.02,
                      child: Row(
                        children: [
                          const Text(
                            "My Contacts",
                            style: FontStyles.headline4sgrey,
                          ),
                          Icon(IconConst.chevron),
                        ],
                      ),
                    ),
                  ),
                  const DividerWidgets(),
                  ListTileWidget(
                    text: "Last Seen & Online",
                    trailing: SizedBox(
                      width: context.w * 148 / 375,
                      height: context.h * 0.04,
                      child: Row(
                        children: [
                          const Text(
                            "Nobody (+14)",
                            style: FontStyles.headline4sgrey,
                          ),
                          Icon(IconConst.chevron),
                        ],
                      ),
                    ),
                  ),
                  const DividerWidgets(),
                  ListTileWidget(
                    text: "Profile Photo",
                    trailing: SizedBox(
                      width: context.w * 121 / 375,
                      height: context.h * 0.03,
                      child: Row(
                        children: [
                          const Text(
                            "Everybody",
                            style: FontStyles.headline4sgrey,
                          ),
                          Icon(IconConst.chevron),
                        ],
                      ),
                    ),
                  ),
                  const DividerWidgets(),
                  ListTileWidget(
                    text: "Voice Calls",
                    trailing: SizedBox(
                      width: context.w * 139 / 375,
                      height: context.h * 0.2,
                      child: Row(
                        children: [
                          const Text(
                            "Nobody (+7)",
                            style: FontStyles.headline4sgrey,
                          ),
                          Icon(IconConst.chevron),
                        ],
                      ),
                    ),
                  ),
                  const DividerWidgets(),
                  ListTileWidget(
                    text: "Forwarded Messages",
                    trailing: SizedBox(
                      width: context.w * 121 / 375,
                      height: context.h * 0.3,
                      child: Row(
                        children: [
                          const Text(
                            "Everybody",
                            style: FontStyles.headline4sgrey,
                          ),
                          Icon(IconConst.chevron),
                        ],
                      ),
                    ),
                  ),
                  const DividerWidgets(),
                  ListTileWidget(
                    text: "Groups & Channels",
                    trailing: SizedBox(
                      width: context.w * 121 / 375,
                      height: context.h * 0.3,
                      child: Row(
                        children: [
                          const Text(
                            "Everybody",
                            style: FontStyles.headline4sgrey,
                          ),
                          Icon(IconConst.chevron),
                        ],
                      ),
                    ),
                  ),
                  const DividerWidgets(),
                  const Padding(
                      padding: PMconst.medium,
                      child: Text(
                        "Change who can add you to groups and channels.",
                        style: FontStyles.headline4sgrey,
                      )),
                  const Padding(
                      padding: PMconst.medium,
                      child: Text(
                        "AUTOMATICALLY DELETE MY ACCOUNT",
                        style: FontStyles.headline4sgrey,
                      )),
                  ListTileWidget(
                    text: "If Away For",
                    trailing: SizedBox(
                      width: context.w * 101 / 375,
                      height: context.h * 0.05,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "6 month",
                            style: FontStyles.headline5sgrey,
                          ),
                          Icon(IconConst.chevron),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                      padding: PMconst.medium,
                      child: Text(
                        "",
                        style: FontStyles.headline4sgrey,
                      )),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
