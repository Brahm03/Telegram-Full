import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram/core/constants/font/styles.dart';
import 'package:telegram/view/main/cubit/main_cubit.dart';
import 'package:telegram/widgets/appbar.dart';
import 'package:telegram/widgets/chat_list_tile_widget.dart';
import 'package:telegram/widgets/serttingsListTile.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return chatScaffold(context);
  }

  Scaffold chatScaffold(BuildContext context) {
    var users = context.watch<MainCubit>().usersList;
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            AppBarWidget(
              leading: const InkWell(
                  child: Text("Edit", style: FontStyles.headline4sblue)),
              center: Text("Chats", style: FontStyles.headline4sbold),
              trailing: SvgPicture.asset('assets/icons/edit.svg'),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: CupertinoSearchTextField(),
                    ),
                    SizedBox(
                      height: 700,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemExtent: 90,
                        itemCount: 7,
                        itemBuilder: (context, i) {
                          return ChatListTileWidget(user: users[i]);
                        },
                      ),
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
