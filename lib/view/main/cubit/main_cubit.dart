import 'dart:convert';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:telegram/core/constants/icons/iconConst.dart';
import 'package:telegram/view/main/state/main_state.dart';
import 'package:flutter/services.dart' as bundle;

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(CallState());

  int currentpage = 0;

  changePages(int index) {
    currentpage = index;
    if (index == 0) {
      emit(ContactState());
    } else if (index == 1) {
      emit(CallState());
    } else if (index == 2) {
      emit(ChatState());
    } else {
      emit(SettingState());
    }
  }

  Map _randomuser = {};

  get randomuser => _randomuser;

  List usersList = [];

  Future getUsers() async {
    final data = await bundle.rootBundle.loadString('lib/core/mock/users.json');
    usersList = jsonDecode(data) as List;
    print(usersList);
    _randomuser = usersList[Random().nextInt(usersList.length)];
    emit(ChatState());
    return usersList;
  }

  List firsthree = [IconConst.saved, IconConst.recentcalls, IconConst.stickers];
  List secondfour = [
    IconConst.notifications,
    IconConst.privacy,
    IconConst.dataandstorage,
    IconConst.appearance
  ];
  List firsthreetext = ['Saved messages', 'Recent calls', 'Stickers'];
  List secondfourtext = [
    'Notifications and Sounds',
    'Privacy and Security',
    'Data and Storage',
    'Appearance'
  ];
}
