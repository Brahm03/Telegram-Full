import 'package:bloc/bloc.dart';
import 'package:telegram/view/main/state/main_state.dart';

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
}
