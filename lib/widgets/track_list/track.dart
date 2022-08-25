import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:yandex_music_desctop/models/track.dart';
import 'package:yandex_music_desctop/redux/actions/app_actions.dart';
import 'package:yandex_music_desctop/redux/app_state.dart';

class TrackItem extends StatelessWidget {
  const TrackItem({
    Key? key,
    required this.track,
  }) : super(key: key);

  final Track track;

  @override
  Widget build(BuildContext context) {
    final Store<AppState> store = StoreProvider.of<AppState>(context);

    return StoreConnector<AppState, AppState>(
        builder: (context, state) => Card(
              elevation: 10,
              shadowColor: Colors.white,
              child: ListTile(
                title: const Text("random"),
                subtitle: const Text("12"),
                leading: IconButton(
                    onPressed: () {
                      store.dispatch(SetPlayingMusic());
                      print(store.state.isPlayingMusic);
                    },
                    icon: Icon(
                        state.isPlayingMusic ? Icons.pause : Icons.play_arrow)),
              ),
            ),
        converter: (store) => store.state);
  }
}
