import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:redux/redux.dart';
import 'package:yandex_music_desctop/models/app_state.dart';
import 'package:yandex_music_desctop/redux/actions/app_actions.dart';
import 'package:yandex_music_desctop/screens/router.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    final Store<AppState> store = StoreProvider.of<AppState>(context);

    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) => MacosWindow(
              titleBar: const TitleBar(
                alignment: Alignment.center,
                title: Text("Yamux"),
              ),
              sidebar: Sidebar(
                  builder: (context, scrollController) => SidebarItems(
                          items: [
                            const SidebarItem(
                              label: Text("Main page"),
                            ),
                            const SidebarItem(
                              label: Text("Favorite"),
                            )
                          ],
                          currentIndex: state.currentTab!,
                          onChanged: (value) =>
                              store.dispatch(SetCurrenTab(value))),
                  minWidth: 300),
              child: const AppRouter(),
            ));
  }
}
