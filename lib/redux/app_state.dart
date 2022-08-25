import 'package:yandex_music_desctop/models/user.dart';

class AppState {
  //final Playlist playlist;
  final User user;
  final bool isPlayingMusic;

  const AppState({required this.user, required this.isPlayingMusic});
}
