import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:redux/redux.dart';
import 'package:yandex_music_desctop/models/app_state.dart';
import 'package:yandex_music_desctop/models/user.dart';
import 'package:yandex_music_desctop/redux/reducer.dart';
import 'package:yandex_music_desctop/screens/app_screen.dart';
import 'package:yandex_music_desctop/services/dio.dart';

void main() {
  runApp(YandexMusicApp());
}

class YandexMusicApp extends StatelessWidget {
  final Store<AppState> store = Store(reducer,
      initialState: AppState(
          user: null,
          isPlayingMusic: false,
          currentPlayingTrack: null,
          currentTab: 0));

  YandexMusicApp({Key? key}) : super(key: key);

  final DioClient _client = DioClient();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<User?>(
      future: _client.auth(),
      builder: ((context, snapshot) => StoreProvider(
            store: store,
            child: MacosApp(
              home: const App(),
              theme: MacosThemeData.dark(),
              themeMode: ThemeMode.dark,
            ),
          )),
    );
  }
}
