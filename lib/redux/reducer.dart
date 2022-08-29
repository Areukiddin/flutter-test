import 'package:yandex_music_desctop/models/app_state.dart';

import 'package:yandex_music_desctop/redux/reducers/app.dart';

AppState reducer(AppState state, dynamic action) =>
    setPlayMusicReducer(state, action);
