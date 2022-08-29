import 'package:redux/redux.dart';
import 'package:yandex_music_desctop/redux/actions/app_actions.dart';
import 'package:yandex_music_desctop/models/app_state.dart';

Reducer<AppState> setPlayMusicReducer = combineReducers([
  TypedReducer<AppState, SetCurrentPlayingTrack>(_setCurrentTrack),
  TypedReducer<AppState, SetCurrenTab>(_setCurrentTab),
]);

AppState _setCurrentTrack(AppState state, SetCurrentPlayingTrack action) {
  return AppState.update(state, action.track);
}

AppState _setCurrentTab(AppState state, SetCurrenTab action) {
  return AppState.update(state, null, action.tab);
}
