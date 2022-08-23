import 'package:flutter/material.dart';
import 'package:yandex_music_desctop/widgets/favorite/list.dart';

void main() => runApp(const YandexMusicApp());

class YandexMusicApp extends StatelessWidget {
  const YandexMusicApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Yandex music"),
              centerTitle: true,
              backgroundColor: Colors.black87,
            ),
            body: FavoriteMusic()));
  }
}
