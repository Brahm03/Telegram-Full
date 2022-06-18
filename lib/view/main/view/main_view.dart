import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telegram/view/chat/view/chat_view.dart';
import 'package:telegram/view/main/cubit/main_cubit.dart';
import 'package:telegram/view/main/state/main_state.dart';
import 'package:telegram/view/settings/view/settings_view.dart';
import 'package:telegram/widgets/bottomNavigationbar.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => MainCubit(), child: scofold(context));
  }

  Scaffold scofold(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigationwidget(),
      resizeToAvoidBottomInset: false,
      body: BlocConsumer<MainCubit, MainState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is ChatState) {
              return const ChatView();
            } else if (state is CallState) {
              return const Center(
                child: Text('Call'),
              );
            } else if (state is ContactState) {
              return const Center(
                child: Text('Contact'),
              );
            } else if (state is SettingState) {
              return const SettingsView();
            } else {
              return Container();
            }
          }),
    );
  }
}
