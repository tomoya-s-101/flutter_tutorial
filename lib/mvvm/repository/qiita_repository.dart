import 'package:flutter_app/mvvm/api/qiita_api_client.dart';
import 'package:flutter_app/mvvm/model/qiita_item.dart';

class QiitaRepository {
  QiitaApiClient _api = QiitaApiClient.create();

  Future<List<QiitaItem>> fetchQiitaItems(String tag) async {
    return await _api.fetchQiitaItems(tag);
  }
}