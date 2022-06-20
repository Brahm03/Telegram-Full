import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram/core/constants/font/styles.dart';
import 'package:telegram/extension/size_extension.dart';
import 'package:telegram/view/calls/widgets/all_missed_widget.dart';
import 'package:telegram/view/main/cubit/main_cubit.dart';
import 'package:telegram/widgets/appbar.dart';
import 'package:telegram/widgets/callListTileWidget.dart';
import 'package:telegram/widgets/listTile_widget.dart';

class CallsView extends StatelessWidget {
  const CallsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return callsScaffold(context);
  }

  Scaffold callsScaffold(BuildContext context) {
    var users = context.watch<MainCubit>().usersList;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(
              leading: const InkWell(
                child: Text("Edit", style: FontStyles.headline4sblue),
              ),
              center: const AllMissedWidget(),
              trailing: SvgPicture.asset('assets/icons/call_plus.svg'),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 1000,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: users.length,
                        itemBuilder: (context, i) {
                          return CallListTilewidget(
                            // user: users[i],
                            leading: SizedBox(
                              width: context.w * 0.20,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: context.w * 0.05,
                                    child: users[i]['outgoing'] == true
                                        ? SvgPicture.asset(
                                            'assets/icons/outgoing_call.svg',
                                            width: 30)
                                        : SizedBox(),
                                  ),
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundImage:
                                        AssetImage(users[i]['image_url']),
                                  ),
                                ],
                              ),
                            ),
                            title: Text(
                                "${users[i]['name'].toString()} ${users[i]['surname'].toString()}",
                                style: users[i]['call'] == "Missed"
                                    ? FontStyles.headline3sred
                                    : FontStyles.headline4s),
                            subtitle: Text(users[i]['call'],
                                style: FontStyles.headline4s),
                            trailing: SizedBox(
                              width: context.w * 0.21,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    users[i]['info'],
                                    style: FontStyles.headline4sgrey,
                                  ),
                                  SizedBox(width: context.w * 0.02),
                                  SvgPicture.asset('assets/icons/info.svg')
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    )
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
