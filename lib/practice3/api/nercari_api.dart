import 'package:flutter_app/practice3/model/mercari_item.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

@RestApi(baseUrl: "https://hosting-json-a9ea3.web.app/")
abstract class MercariApi {
  factory MercariApi(Dio dio, {String baseUrl}) = _MercariApi;

  static MercariApi create() {
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    return MercariApi(dio);
  }

  @GET("api/v1/mercari.json")
  Future<List<MercariItem>> fetchMercariItems();
}
