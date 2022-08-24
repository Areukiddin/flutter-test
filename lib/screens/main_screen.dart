import 'package:flutter/material.dart';
import 'package:yandex_music_desctop/widgets/player.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Yandex music"),
          centerTitle: true,
          backgroundColor: Colors.black87,
        ),
        body: Player());
  }
}
