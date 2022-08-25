import 'package:redux/redux.dart';
import 'package:yandex_music_desctop/redux/actions/app_actions.dart';
import 'package:yandex_music_desctop/redux/app_state.dart';

Reducer<AppState> setPlayMusicReducer = combineReducers([
  TypedReducer<AppState, SetCurrentPlayingTrack>(_setCurrentTrack),
]);

AppState _setCurrentTrack(AppState state, SetCurrentPlayingTrack action) {
  return AppState.updateTrack(state, action.track);
}
