import 'package:redux/redux.dart';
import 'package:yandex_music_desctop/redux/actions/app_actions.dart';

Reducer<bool> setPlayMusicReducer =
    combineReducers([TypedReducer<bool, SetPlayingMusic>(_setPlayMusic)]);

bool _setPlayMusic(bool isPlayingMusic, SetPlayingMusic action) =>
    !isPlayingMusic;
