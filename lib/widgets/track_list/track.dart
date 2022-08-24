import 'package:flutter/material.dart';
import 'package:yandex_music_desctop/models/track.dart';

class TrackItem extends StatefulWidget {
  const TrackItem({
    Key? key,
    required this.track,
  }) : super(key: key);

  final Track track;

  @override
  State<TrackItem> createState() => _TrackItemState();
}

class _TrackItemState extends State<TrackItem> {
  bool _isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor: Colors.white,
      child: ListTile(
        title: Text(widget.track.name),
        subtitle: Text(widget.track.duration.toString()),
        leading: IconButton(
            onPressed: () => setState(() {
                  _isPlaying = !_isPlaying;
                }),
            icon: Icon(_isPlaying ? Icons.pause : Icons.play_arrow)),
      ),
    );
  }
}
