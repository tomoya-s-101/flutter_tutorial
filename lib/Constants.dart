import 'package:flutter/material.dart';

class Dimens {
  static const double d4 = 4.0;
  static const double d8 = 8.0;
  static const double d12 = 12.0;
  static const double d16 = 16.0;
  static const double d20 = 20.0;
  static const double d56 = 56.0;
  static const double d200 = 200.0;
}

class Strings {
  // HomeScreen
  static const String youtubeText = "YouTube";

  // YouTubeScreen
  static const String trendingText = "急上昇";
  static const String musicText = "音楽";
  static const String gameText = "ゲーム";
  static const String newsText = "ニュース";
  static const String learnText = "学び";
  static const String liveText = "ライブ";
  static const String sportsText = "スポーツ";
  static const String trendingVideoText = "急上昇動画";
  static const String videoTitle =
      "\"This is ARASHI LIVE 2020. 12. 31\" DigestMovie";
  static const String videoDetailText = "ARASHI ・ 127万回視聴 ・ 1日前";
  static const String homeText = "ホーム";
  static const String searchText = "検索";
  static const String channelText = "チャンネル";
  static const String libraryText = "ライブラリ";
}

class AppColors {
  static const Color white = Color(0xFFFFFFFF);
  static const Color red = Color(0xFFF44336);
  static const Color greenAccent = Color(0xFFB9F6CA);
  static const Color orange = Color(0xFFFFB74D);
  static const Color blueAccent = Color(0xFF448AFF);
  static const Color green = Color(0xFF388E3C);
  static const Color deepOrangeAccent = Color(0xFFFF6E40);
  static const Color lightBlueAccent = Color(0xFF40C4FF);
  static const Color greyShade500 = Color(0xFF9E9E9E);
  static const Color greyShade900 = Color(0xFF212121);
}

class CommonStyle {
  static const TextStyle textNormal = TextStyle(
    fontSize: Dimens.d16,
    color: Colors.white,
  );
  static const TextStyle textVideoTitle = TextStyle(
    color: Colors.white,
  );
  static const TextStyle textVideoShade = TextStyle(
    color: AppColors.greyShade500,
    fontSize: Dimens.d12,
  );
}
