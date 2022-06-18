import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telegram/core/constants/color/color.dart';
import 'package:telegram/core/constants/icons/iconConst.dart';
import 'package:telegram/core/constants/radius/radiusconst.dart';
import 'package:telegram/view/main/cubit/main_cubit.dart';

class BottomNavigationwidget extends StatelessWidget {
  const BottomNavigationwidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabBar(
        currentIndex: context.watch<MainCubit>().currentpage,
        onTap: (v) => context.read<MainCubit>().changePages(v),
        items: [
          BottomNavigationBarItem(icon: IconConst.contanct, label: 'Contact'),
          BottomNavigationBarItem(icon: IconConst.call, label: 'Call'),
          BottomNavigationBarItem(icon: IconConst.chat, label: 'Chats'),
          const BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: RadiuConst.medium,
                backgroundColor: ColorConst.green,
              ),
              label: 'Settings'),
        ]);
  }
}
