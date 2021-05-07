import 'package:flutter_app/practice1/model/youtube_item.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'youtube_api.g.dart';

@RestApi(baseUrl: "https://hosting-json-a9ea3.web.app/")
abstract class YouTubeApi {
  factory YouTubeApi(Dio dio, {String baseUrl}) = _YouTubeApi;

  static YouTubeApi create() {
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    return YouTubeApi(dio);
  }

  @GET("api/v1/youtube.json")
  Future<List<YouTubeItem>> fetchYouTubeItems();
}