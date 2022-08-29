import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:yandex_music_desctop/models/track.dart';
import 'package:yandex_music_desctop/redux/actions/app_actions.dart';
import 'package:yandex_music_desctop/models/app_state.dart';

class TrackItem extends StatefulWidget {
  const TrackItem({Key? key, required this.track}) : super(key: key);

  final Track track;

  @override
  State<TrackItem> createState() => _TrackItemState();
}

class _TrackItemState extends State<TrackItem> {
  @override
  Widget build(BuildContext context) {
    final Store<AppState> store = StoreProvider.of<AppState>(context);

    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, state) => Card(
        elevation: 10,
        shadowColor: Colors.white,
        child: ListTile(
          title: Text(widget.track.name),
          subtitle: Text(widget.track.duration.toString()),
          leading: IconButton(
              onPressed: () => {
                    store.dispatch(
                      SetCurrentPlayingTrack(widget.track),
                    ),
                  },
              icon: Icon(state.isPlayingMusic &&
                      state.currentPlayingTrack?.id == widget.track.id
                  ? Icons.pause
                  : Icons.play_arrow)),
        ),
      ),
    );
  }
}
