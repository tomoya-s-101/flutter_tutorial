import 'package:flutter/material.dart';

class Dimens {
  static const double d4 = 4.0;
  static const double d8 = 8.0;
  static const double d12 = 12.0;
  static const double d16 = 16.0;
  static const double d20 = 20.0;
  static const double d40 = 40.0;
  static const double d56 = 56.0;
  static const double d200 = 200.0;
}

class Strings {
  // HomeScreen
  static const String youtubeText = "YouTube";
  static const String netKeibaText = "netkeiba";

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

  // NetKeibaScreen
  static const String topText = "トップ";
  static const String raceText = "レース";
  static const String bettingTicketText = "ウマい馬券";
  static const String columnText = "コラム";
  static const String netkeibaTVText = "netkeibaTV";
  static const String narKeibaText = "地方競馬";
  static const String dbText = "データベース";
  static const String proText = "俺プロ";
  static const String ownerText = "一口馬主";
  static const String pogText = "POG";
  static const String keibaSquareText = "競馬広場";
  static const String favText = "お気に入り馬";
  static const String conclusionText = "まとめ";
  static const String myPageText = "マイページ";
  static const String accountText = "アカウント";
  static const String convenienceText = "便利でお得な";
  static const String serviceInfoText = "プレミアムサービスのご案内";
  static const String newPlanText = "【お知らせ】キャリア新プランについて";
  static const String flashReportText = "レースLIVE速報";
  static const String areaListText = "地方一覧";
  static const String newNewsText = "新着ニュース＆コラム";
  static const String moreSeeText = "もっと見る";
  static const String columnTitle = "【桜花賞見どころ】白毛の２歳女王ソダシの無敗制覇なるか";
  static const String column2Title = "【ニュージーランドT見どころ】バスラットレオンが人気の中心";
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
  static const Color greyShade200 = Color(0xFFEEEEEE);
  static const Color greyShade300 = Color(0xFFE0E0E0);
  static const Color greyShade500 = Color(0xFF9E9E9E);
  static const Color greyShade700 = Color(0xFF616161);
  static const Color greyShade900 = Color(0xFF212121);
  static const Color greyNetKeiba = Color(0xB3FFFFFF);
  static const Color greyNetKeibaButton = Color(0x8AFFFFFF);
  static const Color netkeibaAppBar = Color(0xFF0D47A1);
  static const Color lightBlue = Color(0xFF039BE5);
}

class CommonStyle {
  static const TextStyle bold = TextStyle(
    fontWeight: FontWeight.bold,
  );
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
  static const TextStyle textConvenience = TextStyle(
    color: AppColors.lightBlue,
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );
  static const TextStyle textFlashReport = TextStyle(
    color: AppColors.greyShade700,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );
}
