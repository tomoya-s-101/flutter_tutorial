import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

@RestApi(baseUrl: "https://hosting-json-a9ea3.web.app/")
abstract class NetkeibaApi {
  factory NetkeibaApi(Dio dio, {String baseUrl}) = _NetkeibaApi;

  static NetkeibaApi create() {
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    return NetkeibaApi(dio);
  }

  @GET("api/v1/netkeiba.json")
  Future<List<NetkeibaApi>> fetchNetkeibaItems();
}
