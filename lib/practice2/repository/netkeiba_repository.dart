import 'package:flutter_app/practice2/api/netkeiba_api.dart';
import 'package:flutter_app/practice2/model/netkeiba_item.dart';

class NetkeibaRepository {
  NetkeibaApi _api = NetkeibaApi.create();

  Future<List<NetkeibaItem>> fetchNetkeibaItems() async {
    return await _api.fetchNetkeibaItems();
  }
}