import 'package:flutter/material.dart';
import 'package:yandex_music_desctop/screens/main_screen.dart';

void main() => runApp(const YandexMusicApp());

class YandexMusicApp extends StatelessWidget {
  const YandexMusicApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MainScreen());
  }
}
