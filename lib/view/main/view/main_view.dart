import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telegram/view/main/cubit/main_cubit.dart';
import 'package:telegram/view/main/state/main_state.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<MainCubit, MainState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is ChatState) {
              return const Center(
                child: Text('Chat'),
              );
            } else if (state is CallState) {
              return const Center(
                child: Text('Call'),
              );
            } else if (state is ContactState) {
              return const Center(
                child: Text('Contact'),
              );
            } else if (state is SettingState) {
              return const Center(
                child: Text('Settings'),
              );
            } else {
              return Container();
            }
          }),
    );
  }
}
