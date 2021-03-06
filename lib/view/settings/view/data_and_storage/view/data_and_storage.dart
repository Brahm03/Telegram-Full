import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telegram/core/constants/color/color.dart';
import 'package:telegram/core/constants/font/styles.dart';
import 'package:telegram/core/constants/icons/iconConst.dart';
import 'package:telegram/core/constants/pm/PMconst.dart';
import 'package:telegram/extension/size_extension.dart';
import 'package:telegram/view/main/cubit/main_cubit.dart';
import 'package:telegram/widgets/appbar.dart';
import 'package:telegram/widgets/backButton.dart';
import 'package:telegram/widgets/dividerWidget.dart';
import 'package:telegram/widgets/listTile_widget.dart';

class DataAndStorage extends StatelessWidget {
  const DataAndStorage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => MainCubit(), child: scaffold(context));
  }

  Scaffold scaffold(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kBackground,
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(

              leading: const BackButtonWidgets(),
              center: const Text("Data and Storage", style: FontStyles.headline4s),
              trailing: SizedBox(width: context.w * 0.15),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: context.w * 0.04,
                    ),
                    const ListTileWidget(
                      text: "Storage Usage",
                      trailing: Icon(Icons.chevron_right_outlined),
                    ),
                   const DividerWidgets(),
                    const ListTileWidget(
                      text: "Network Usage",
                      trailing: Icon(Icons.chevron_right_outlined),
                    ),
                    const DividerWidgets(),
                    const Padding(
                        padding: PMconst.medium,
                        child: Text("AUTOMATIC MEDIA DOWNLOAD")),
                     const ListTileWidget(
                      text: "Using Cellular",
                      subtitle: Text(
                        "Disabled",
                        style: FontStyles.headline4sgrey,
                      ),
                      trailing: Icon(Icons.chevron_right_outlined),
                    ),
                    const DividerWidgets(),
                    ListTileWidget(
                      text: "Using Wi-Fi",
                      subtitle: const Text(
                        "Disabled",
                        style: FontStyles.headline4sgrey,
                      ),
                      trailing: Icon(IconConst.chevron),
                    ),
                    const DividerWidgets(),
                    const ListTile(
                      tileColor: ColorConst.kAuthBackground,
                      title: Text(
                        "Reset Auto-Download Settings",
                        style: FontStyles.headline4sgrey,
                      ),
                    ),
                    const Padding(
                      padding: PMconst.medium,
                      child: Text("AUTO-PLAY MEDIA"),
                    ),
                    ListTileWidget(
                      text: "GIFs",
                      trailing: Switch.adaptive(
                        value: true,
                        onChanged: (bool value) {},
                      ),
                    ),
                    const DividerWidgets(),
                    ListTileWidget(
                      text: "Videos",
                      trailing: Switch.adaptive(
                          value: false, onChanged: (bool value) {}),
                    ),
                    const Padding(
                      padding: PMconst.medium,
                      child: Text("VOICE CALLS"),
                    ),
                    ListTileWidget(
                      text: "Use Less Data",
                      trailing: SizedBox(
                        width: context.w * 78 / 375,
                        height: context.w * 4,
                        child: Row(
                          children:  [
                            const Text("Never", style: FontStyles.headline4sgrey),
                            Icon(IconConst.chevron)
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: PMconst.medium,
                      child: Text(
                        'OTHER',
                        style: FontStyles.headline4s,
                      ),
                    ),
                    const ListTileWidget(
                      text: "Save Incoming Photos",
                      trailing: Icon(Icons.chevron_right_outlined),
                    ),
                    ListTileWidget(
                      text: "Save Edited Photos",
                      trailing: Switch.adaptive(
                          value: true, onChanged: (bool value) {}),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

 
}
