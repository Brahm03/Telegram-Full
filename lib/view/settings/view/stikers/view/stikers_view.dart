import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram/core/constants/color/color.dart';
import 'package:telegram/core/constants/icons/iconConst.dart';
import 'package:telegram/core/mock/stiker_mock.dart';
import 'package:telegram/extension/size_extension.dart';
import 'package:telegram/widgets/appbar.dart';
import 'package:telegram/widgets/backButton.dart';
import 'package:telegram/widgets/text_widget.dart';

class StikersView extends StatefulWidget {
  const StikersView({Key? key}) : super(key: key);

  @override
  State<StikersView> createState() => _StikersViewState();
}

class _StikersViewState extends State<StikersView> {
  @override
  Widget build(BuildContext context) {
    bool switche = true;
    List<Widget> widget = [
      SizedBox(
        child: Row(
          children: [
            TextWidget.text("All Sets", color: ColorConst.kTextGrey),
            const SizedBox(width: 10),
            Icon(IconConst.chevron)
          ],
        ),
      ),
      SizedBox(
        child: Row(
          children: [
            Container(
              height: context.w * 20 / 375,
              width: context.w * 26 / 375,
              decoration: BoxDecoration(
                  color: ColorConst.kPrimaryColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child:
                      TextWidget.text("15", size: 15, color: ColorConst.white)),
            ),
            const SizedBox(width: 10),
            Icon(IconConst.chevron)
          ],
        ),
      ),
      SizedBox(
        child: Row(
          children: [
            TextWidget.text("46", color: ColorConst.kTextGrey),
            const SizedBox(width: 10),
            Icon(IconConst.chevron)
          ],
        ),
      ),
      SizedBox(
        child: Row(
          children: [const SizedBox(width: 10), Icon(IconConst.chevron)],
        ),
      ),
      SizedBox(
          child: CupertinoSwitch(value: switche, onChanged: (bool value) {})),
    ];
    return scaffold(context, widget);
  }

  Scaffold scaffold(BuildContext context, List<Widget> widget) {
    return Scaffold(
      backgroundColor: ColorConst.kBackground,
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarWidget(
              color: ColorConst.kAppBar,
              leading: const BackButtonWidgets(),
              center: TextWidget.text("Stikers", fontWeight: FontWeight.w600),
              trailing: InkWell(
                child: TextWidget.text("Edit", color: ColorConst.kPrimaryColor),
                onTap: () {},
              ),
            ),
            SizedBox(
              height: context.h * 0.87,
              child: SingleChildScrollView(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: context.w * 35 / 375,
                  ),
                  Container(
                    color: ColorConst.white,
                    height: context.h * 0.35,
                    width: context.w,
                    child: ListView.builder(
                      itemBuilder: (cxt, ind) {
                        return list_tile(
                          text: list[ind],
                          widget: widget[ind],
                        );
                      },
                      itemCount: 5,
                    ),
                  ),
                  SizedBox(
                    height: context.w * 7 / 375,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: context.w * 0.03),
                      child: TextWidget.text(
                          'Animated stickers will play in chat continuously.',
                          size: 14,
                          color: const Color(0xFF636366))),
                  SizedBox(
                    height: context.w * 42 / 375,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: context.w * 0.03),
                      child: TextWidget.text('STICKER SETS',
                          size: 14, color: const Color(0xFF636366))),
                  Expanded(
                      child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (ctx, ind) {
                      return Column(
                        children: [
                          ListTile(
                            tileColor: ColorConst.white,
                            leading: CircleAvatar(
                              foregroundImage:
                                  AssetImage(StikerInfo.stiker[ind].image),
                            ),
                            title: TextWidget.text(StikerInfo.stiker[ind].name,
                                size: 15),
                            subtitle: TextWidget.text(
                                StikerInfo.stiker[ind].name,
                                size: 14,
                                color: Color(0xFF8E8E93)),
                          ),
                          Divider(
                              indent: context.w * 65 / 375,
                              height: 1,
                              color: ColorConst.grey)
                        ],
                      );
                    },
                    itemCount: StikerInfo.stiker.length,
                  ))
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}

List<String> list = [
  'Suggest by Emoji',
  "Trending Stickers",
  "Archived Stickers",
  "Masks",
  "Loop Animated Stickers",
];

class list_tile extends StatelessWidget {
  String text;
  Widget widget;
  list_tile({Key? key, required this.text, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConst.white,
      height: context.h * 54 / 812,
      width: context.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.w * 15 / 375,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [TextWidget.text(text), widget],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: context.w * 15 / 375, left: context.w * 16 / 375),
            child: Container(
              width: context.w,
              height: 1,
              color: ColorConst.grey,
            ),
          ),
        ],
      ),
    );
  }
}
