import 'package:yandex_music_desctop/models/track.dart';
import 'package:yandex_music_desctop/models/user.dart';

class AppState {
  //final Playlist playlist;
  User? user;
  bool isPlayingMusic = false;
  Track? currentPlayingTrack;
  int? currentTab = 0;

  AppState(
      {required this.user,
      required this.isPlayingMusic,
      required this.currentPlayingTrack,
      required this.currentTab});

  AppState.update(AppState prevState,
      [Track? track, int? tab, User? userData]) {
    if (prevState.currentPlayingTrack?.id == track?.id) {
      currentPlayingTrack = prevState.currentPlayingTrack;
      isPlayingMusic = !prevState.isPlayingMusic;
    } else {
      currentPlayingTrack = track;
      isPlayingMusic = true;
    }

    currentTab = tab ?? prevState.currentTab;

    user = userData ?? prevState.user;
  }
}
