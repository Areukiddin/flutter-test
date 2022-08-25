import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:yandex_music_desctop/models/user.dart';
import 'package:yandex_music_desctop/redux/app_state.dart';
import 'package:yandex_music_desctop/redux/reducer.dart';
import 'package:yandex_music_desctop/screens/main_screen.dart';

void main() {
  runApp(YandexMusicApp());
}

class YandexMusicApp extends StatelessWidget {
  final Store<AppState> store = Store(reducer,
      initialState:
          AppState(user: User(name: '', id: ''), isPlayingMusic: false));

  YandexMusicApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
        store: store, child: const MaterialApp(home: MainScreen()));
  }
}
