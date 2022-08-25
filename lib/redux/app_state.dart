import 'package:yandex_music_desctop/models/track.dart';
import 'package:yandex_music_desctop/models/user.dart';

class AppState {
  //final Playlist playlist;
  User? user;
  bool isPlayingMusic = false;
  Track? currentPlayingTrack;

  AppState(
      {required this.user,
      required this.isPlayingMusic,
      required this.currentPlayingTrack});

  AppState.updateTrack(AppState prevState, Track track) {
    if (prevState.currentPlayingTrack?.id == track.id) {
      currentPlayingTrack = prevState.currentPlayingTrack;
      isPlayingMusic = !prevState.isPlayingMusic;
    } else {
      currentPlayingTrack = track;
      isPlayingMusic = true;
    }
  }
}
