import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:yandex_music_desctop/models/track_list.dart';
import 'package:yandex_music_desctop/models/user.dart';

class DioClient {
  final _baseUrl = 'https://oauth.yandex.ru/token';

  final Dio _dio = Dio(BaseOptions(baseUrl: 'https://oauth.yandex.ru/token'))
    ..interceptors.add(Logging());

  final authData = {
    "client_id": "23cabbbdc6cd418abb4b39c32c41195d",
    "client_secret": "53bc75238f0c4d08a118e51fe9203300",
    "login": "nitreks@yandex.ru",
    "x_token_client_id": "c0ebe342af7d48fbbbfcf2d2eedb8f9e",
    "x_token_client_secret": "ad0a908f0aa341a182a37ecd75bc319e",
    "display_language": "ru"
  };

  Future<User> auth() async {
    Response auth = await _dio.post(
      "https://mobileproxy.passport.yandex.net/2/bundle/mobile/start",
      data: jsonEncode(authData),
    );

    User user = User.fromJson(auth.data);

    return user;
  }

  Future<TrackList> getTrackList({required String id}) async {
    Response trackList = await _dio.get(_baseUrl + "/users/:id/playlists/list");

    TrackList list = TrackList.fromJson(trackList.data);

    return list;
  }
}

class Logging extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('REQUEST[${options.method}] => DATA: ${options.data}');
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print(
      'RESPONSE[${response.statusCode}] => PATH: ${response.data}',
    );
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print(
      'ERROR[${err.response?.statusCode}] => PATH: ${err.response}',
    );
    return super.onError(err, handler);
  }
}
