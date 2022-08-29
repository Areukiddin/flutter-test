import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:yandex_music_desctop/models/app_state.dart';
import 'package:yandex_music_desctop/widgets/player.dart';

class AppRouter extends StatefulWidget {
  const AppRouter({Key? key}) : super(key: key);

  @override
  State<AppRouter> createState() => _RouterState();
}

class _RouterState extends State<AppRouter> {
  Widget buildPage(int currentTab) {
    switch (currentTab) {
      case 0:
        return const Text("HOME PAGE");
      case 1:
        return Player();
    }
    return const Text("HOME PAGE");
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: ((context, state) => buildPage(state.currentTab!)),
    );
  }
}
