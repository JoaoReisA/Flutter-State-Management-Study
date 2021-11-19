import 'package:gerenciamento_estados/redux/store.dart';

enum AppAction {
  increment,
  decrement
}

class AppState {
  final int value;
  AppState({
     this.value = 0,
  });
  
}

AppState reducer(AppState state, AppAction action){
  if(action == AppAction.increment){
    return AppState(value: state.value + 1);
  }else{
    return AppState(value:  state.value - 1);
  }
}

final appStore = Store<AppAction, AppState>(initialState: AppState(), reducer: reducer);
