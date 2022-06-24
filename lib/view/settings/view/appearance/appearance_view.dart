import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram/core/constants/color/color.dart';
import 'package:telegram/core/constants/font/styles.dart';
import 'package:telegram/core/constants/icons/iconConst.dart';
import 'package:telegram/core/constants/pm/PMconst.dart';
import 'package:telegram/extension/size_extension.dart';
import 'package:telegram/widgets/appbar.dart';
import 'package:telegram/widgets/backButton.dart';
import 'package:telegram/widgets/callListTileWidget.dart';



class AppearanceView extends StatelessWidget {
  const AppearanceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double value = 0.0;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBarWidget(
            leading: const BackButtonWidgets(),
            center: const Text(
              "Appearance",
              style: FontStyles.headline4s,
            ),
            trailing: IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/upload.svg')),
          ),
          SizedBox(
            height: context.h * 0.03,
          ),
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("COLOR THEME", style: FontStyles.headline4s),
          ),
          Container(
            width: context.w,
            height: context.h * 0.15,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image:
                        AssetImage('assets/images/appearance_background.png'))),
          ),
          Container(
              width: context.w,
              height: context.h * 0.15,
              color: ColorConst.white,
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/classic.png', width: 100),
                  Image.asset('assets/images/day.png', width: 100),
                  Image.asset('assets/images/night.png', width: 100),
                ],
              )),
          SizedBox(height: context.h * 0.03),
          Container(
            color: ColorConst.white,
            child: CallListTilewidget(
                title: Text("Chat Background"),
                trailing: Icon(IconConst.chevron)),
          ),
          Container(
            color: ColorConst.white,
            child: CallListTilewidget(
              title: Text("Auto-Night Mode"),
              trailing: SizedBox(
                width: context.w * 0.25,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Disabled",
                      style: FontStyles.headline4sgrey,
                    ),
                    Icon(Icons.chevron_right)
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: context.h * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("TEXT SIZE", style: FontStyles.headline4sgrey),
          ),
          StatefulBuilder(builder: (context, setState) {
            return Container(
              width: context.w,
              color: ColorConst.white,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Text("A", style: FontStyles.headline4s),
                  Expanded(
                    child: CupertinoSlider(
                      divisions: 10,
                      max: 10.0,
                      value: value,
                      activeColor: ColorConst.kPrimaryColor,
                      onChanged: (data) {
                        setState(() {
                          value = data;
                        });
                      },
                    ),
                  ),
                  const Text("A", style: FontStyles.headline1s),
                ],
              ),
            );
          }),
          SizedBox(
            height: context.h * 0.03,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("APP ICON", style: FontStyles.headline4sgrey),
          ),
          Expanded(
            child: Container(
              padding: PMconst.small,
              width: context.w,
              color: ColorConst.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/tgimages/default.png', width: 80),
                  Image.asset('assets/images/tgimages/defaultx.png', width: 80),
                  Image.asset('assets/images/tgimages/classictg.png', width: 80),
                  Image.asset('assets/images/tgimages/classicx.png', width: 80),
                ],
              ),
            )
          )
        ],
      ),
    ));
  }
}
