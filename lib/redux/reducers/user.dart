import 'package:redux/redux.dart';
import 'package:yandex_music_desctop/models/app_state.dart';
import 'package:yandex_music_desctop/redux/actions/user_actions.dart';

Reducer<AppState> setUserReducer = combineReducers([
  TypedReducer<AppState, SetUserAction>(_setUser),
]);

AppState _setUser(AppState state, SetUserAction action) {
  return AppState.update(state, null, null, action.data);
}
