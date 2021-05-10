import 'package:flutter_app/practice3/api/nercari_api.dart';
import 'package:flutter_app/practice3/model/mercari_item.dart';

class MercariRepository {
  MercariApi _api = MercariApi.create();

  Future<List<MercariItem>> fetchMercariItems() async {
    return await _api.fetchMercariItems();
  }
}