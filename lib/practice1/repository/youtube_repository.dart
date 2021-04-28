import 'package:flutter_app/practice1/api/youtube_api.dart';
import 'package:flutter_app/practice1/model/youtube_item.dart';

class YouTubeRepository {
  YouTubeApi _api = YouTubeApi.create();

  Future<List<YouTubeItem>> fetchYouTubeItems() async {
    return await _api.fetchYouTubeItems();
  }
}