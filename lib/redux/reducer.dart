import 'package:yandex_music_desctop/redux/app_state.dart';
import 'package:yandex_music_desctop/redux/reducers/app.dart';
import 'package:yandex_music_desctop/redux/reducers/user.dart';

AppState reducer(AppState state, dynamic action) => AppState(
    user: setUserReducer(state.user, action),
    isPlayingMusic: setPlayMusicReducer(state.isPlayingMusic, action));
