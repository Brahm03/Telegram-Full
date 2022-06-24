import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telegram/view/settings/view/stikers/state/stiker_state.dart';

class StikersCubit extends Cubit<StikerState> {
  StikersCubit() : super(InitialClass());
  bool switche = false;

  changeSwitch() {
    switche = !switche;
    emit(InitialClass());
  }
}
