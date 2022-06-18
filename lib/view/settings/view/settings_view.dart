import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telegram/core/constants/color/color.dart';
import 'package:telegram/core/constants/font/styles.dart';
import 'package:telegram/core/constants/icons/iconConst.dart';
import 'package:telegram/core/constants/pm/PMconst.dart';
import 'package:telegram/core/constants/radius/radiusconst.dart';
import 'package:telegram/extension/size_extension.dart';
import 'package:telegram/view/main/cubit/main_cubit.dart';
import 'package:telegram/view/settings/widget/settigsListtilewidget.dart';
import 'package:telegram/widgets/appbar.dart';
import 'package:telegram/widgets/serttingsListTile.dart';

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
                    SettingChatListileWidgets(
                      user: context.watch<MainCubit>().randomuser,
                    ),
                    SizedBox(height: context.h * 0.04),
                    const SettingListtileWidget(
                        icon: CircleAvatar(
                          backgroundImage: NetworkImage('https://images.unsplash.com/photo-1493612276216-ee3925520721?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80'),
                          radius: RadiuConst.medium,
                        ),
                        text: 'Jacob design'),
                    SettingListtileWidget(
                        icon: IconConst.plus, text: 'Add account'),
                    SizedBox(
                      height: context.h * 0.05,
                    ),
                    SizedBox(
                      height: context.h * 0.2,
                      child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount:
                              context.watch<MainCubit>().firsthree.length,
                          itemBuilder: (__, _) {
                            return SettingListtileWidget(
                                icon: context.watch<MainCubit>().firsthree[_],
                                text: context
                                    .watch<MainCubit>()
                                    .firsthreetext[_]);
                          }),
                    ),
                    SizedBox(
                      height: context.h * 0.05,
                    ),
                    SizedBox(
                      height: context.h * 0.25,
                      child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount:
                              context.watch<MainCubit>().secondfour.length,
                          itemBuilder: (__, _) {
                            return SettingListtileWidget(
                                icon: context.watch<MainCubit>().secondfour[_],
                                text: context
                                    .watch<MainCubit>()
                                    .secondfourtext[_]);
                          }),
                    )
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
