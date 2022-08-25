import 'package:flutter/material.dart';
import 'package:yandex_music_desctop/models/track.dart';
import 'package:yandex_music_desctop/widgets/track_list/music_list.dart';

class Player extends StatelessWidget {
  Player({Key? key}) : super(key: key);

  final List<Track> list = [
    Track(name: 'Track 1', duration: 12, id: 1),
    Track(name: 'Track 2', duration: 12, id: 2),
    Track(name: 'Track 3', duration: 12, id: 3),
    Track(name: 'Track 4', duration: 12, id: 4),
    Track(name: 'Track 5', duration: 12, id: 5),
    Track(name: 'Track 6', duration: 12, id: 6),
    Track(name: 'Track 7', duration: 12, id: 7),
    Track(name: 'Track 8', duration: 12, id: 8),
    Track(name: 'Track 9', duration: 12, id: 9),
  ];

  @override
  Widget build(BuildContext context) {
    return MusicList(trackList: list);
  }
}
