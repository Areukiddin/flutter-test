import 'package:dio/dio.dart';
import 'package:yandex_music_desctop/models/track_list.dart';
import 'package:yandex_music_desctop/models/user.dart';

class DioClient {
  final _baseUrl = 'https://oauth.yandex.ru/token';

  final Dio _dio = Dio(BaseOptions(baseUrl: 'https://oauth.yandex.ru/token'))
    ..interceptors.add(Logging());

  Future<User> auth() async {
    final authData = {
      "grant_type": 'password',
      "client_id": '23cabbbdc6cd418abb4b39c32c41195d',
      "client_secret": '53bc75238f0c4d08a118e51fe9203300',
      "username": 'nitreks@yandex.ru',
      "password": '15237q24Q',
    };

    Response auth = await _dio.post("https://oauth.yandex.ru/token",
        data: {authData},
        options: Options(
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}));

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
    print('REQUEST[${options.method}] => PATH: ${options.path}');
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print(
      'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}',
    );
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print(
      'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}',
    );
    return super.onError(err, handler);
  }
}
