import 'package:flutter/material.dart';
import 'package:yandex_music_desctop/models/track.dart';
import 'package:yandex_music_desctop/widgets/track_list/track.dart';

class MusicList extends StatefulWidget {
  MusicList({
    Key? key,
    required this.trackList,
  }) : super(key: key);

  List<Track> trackList;

  @override
  State<MusicList> createState() => _MusicListState();
}

class _MusicListState extends State<MusicList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black87,
        child: ListView.builder(
          padding: const EdgeInsets.all(20),
          itemCount: widget.trackList.length,
          itemBuilder: (_, index) => TrackItem(track: widget.trackList[index]),
        ));
  }
}
