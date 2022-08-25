import 'package:redux/redux.dart';
import 'package:yandex_music_desctop/models/user.dart';
import 'package:yandex_music_desctop/redux/actions/user_actions.dart';

Reducer<User?> setUserReducer = combineReducers([
  TypedReducer<User?, SetUserAction>(_setUser),
]);

User? _setUser(User? user, SetUserAction action) => user;
