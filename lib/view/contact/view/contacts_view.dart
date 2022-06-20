import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram/core/constants/font/styles.dart';
import 'package:telegram/extension/size_extension.dart';
import 'package:telegram/view/main/cubit/main_cubit.dart';
import 'package:telegram/widgets/appbar.dart';
import 'package:telegram/widgets/callListTileWidget.dart';

class ContactsView extends StatelessWidget {
  const ContactsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contactsScaffold(context);
  }

  Scaffold contactsScaffold(BuildContext context) {
    var users = context.watch<MainCubit>().usersList;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(
              leading: SizedBox(width: context.w * 0.05),
              center: const Text(
                "Contacts",
                style: FontStyles.headline4sbold,
              ),
              trailing: SvgPicture.asset('assets/icons/plus.svg'),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListTile(
                        leading: SizedBox(
                          width: context.w * 0.2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: context.w * 0.03,
                              ),
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.white,
                                child: SvgPicture.asset(
                                    'assets/icons/location.svg'),
                              ),
                            ],
                          ),
                        ),
                        title: const Text(
                          "Add People Nearby",
                          style: FontStyles.headline4sblue,
                        )),
                    const Divider(thickness: 1),
                    ListTile(
                        leading: SizedBox(
                          width: context.w * 0.2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width: context.w * 0.03),
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.white,
                                child:
                                    SvgPicture.asset('assets/icons/invite.svg'),
                              ),
                            ],
                          ),
                        ),
                        title: Text(
                          "Invite Friends",
                          style: FontStyles.headline4sblue,
                        )),
                    Divider(thickness: 1),
                    SizedBox(
                      height: 1000,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: users.length,
                        itemBuilder: (context, i) {
                          return CallListTilewidget(
                            // user: users[i],
                            leading: SizedBox(
            width: context.w * 0.20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: context.w * 0.05,
                  
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(users[i]['image_url']),
                ),
              ],
            ),
          ),
                            title: Text(
                              "${users[i]['name'].toString()} ${users[i]['surname'].toString()}",
                              style: FontStyles.headline4s,
                            ),
                            subtitle: Text(users[i]['status'],
                                style: users[i]['status'] == "online"
                                    ? FontStyles.headline4sblue
                                    : FontStyles.headline4s),
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
