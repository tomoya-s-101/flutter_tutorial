import 'package:flutter/material.dart';

class Dimens {
  static const double d4 = 4.0;
  static const double d8 = 8.0;
  static const double d12 = 12.0;
  static const double d16 = 16.0;
  static const double d20 = 20.0;
  static const double d28 = 28.0;
  static const double d32 = 32.0;
  static const double d40 = 40.0;
  static const double d44 = 44.0;
  static const double d56 = 56.0;
  static const double d72 = 72.0;
  static const double d84 = 84.0;
  static const double d92 = 92.0;
  static const double d200 = 200.0;
  static const double d360 = 360.0;
  static const double d400 = 400.0;
}

class Strings {
  // HomeScreen
  static const String youtubeText = "YouTube";
  static const String netKeibaText = "netkeiba";
  static const String mercariText = "メルカリ";
  static const String asyncText = "async";
  static const String qiitaText = "Qiita";
  static const String todoText = "Todo";

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

  // MercariScreen
  static const String listingText = "出品";
  static const String mercariNewsText = "お知らせ";
  static const String merpayText = "メルペイ";
  static const String shortCutText = "出品へのショートカット";
  static const String takePictureText = "写真を撮る";
  static const String albumText = "アルバム";
  static const String barcodeText = "バーコード";
  static const String draftListText = "下書き一覧";
  static const String salesText = "売れやすい持ち物";
  static const String notUseListingText = "使わないモノを出品してみよう！";
  static const String seeAllText = "すべて見る＞";
  static const String findingPersonText = "人が探しています";
  static const String listText = "出品する";
  static const String bookAndCosmeticText = "(本・コスメ)";

  // AsyncScreen
  static const String cancelText = "キャンセル";
  static const String saveText = "保存";
  static const String nameText = "名前";
  static const String ageText = "年齢";
  static const String birthdayText = "誕生日";
  static const String isEmptyText = "未入力です";
  static const String ageValidatorText = "未入力、もしくは数字ではありません";

  // QiitaClientScreen
  static const String qiitaClientText = "QiitaClient";
  static const String flutterText = "Flutter";
  static const String androidText = "android";
  static const String iosText = "ios";

  // TodoScreen
  static const String inputTitleText = "タイトルを入力してください";
  static const String inputContentText = "内容を入力してください";
  static const String timeLimitText = "期限を選択してください";
  static const String notInputDateText = "日付が未入力です";

  // ExpenseScreen
  static const String disbursementManagementText = "支出管理";
  static const String balanceTableText = "収支表";
  static const String Text = "";
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
  static const Color black = Color(0xFF000000);
}

class CommonStyle {
  static const TextStyle bold = TextStyle(
    fontWeight: FontWeight.bold,
  );
  static const TextStyle boldBlack = TextStyle(
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );
  static const TextStyle fontSizeSmall = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: Dimens.d8,
  );
  static const TextStyle subTitleColor = TextStyle(
    color: AppColors.greyShade700,
  );
  static const TextStyle subTextColor = TextStyle(
    color: AppColors.lightBlue,
  );
  static const TextStyle shortCutText = TextStyle(
    color: AppColors.greyShade700,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.d16,
  );
  static const TextStyle cardText = TextStyle(
    color: AppColors.greyShade700,
    fontSize: Dimens.d12,
  );
  static const TextStyle netkeibaColor = TextStyle(
    fontWeight: FontWeight.bold,
    color: AppColors.netkeibaAppBar,
  );
  static const TextStyle textNormal = TextStyle(
    fontSize: Dimens.d16,
    color: Colors.white,
  );
  static const TextStyle textVideoTitle = TextStyle(
    color: Colors.white,
  );
  static const TextStyle whiteBold = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static const TextStyle textVideoShade = TextStyle(
    color: AppColors.greyShade500,
    fontSize: Dimens.d12,
  );
  static const TextStyle textConvenience = TextStyle(
    color: AppColors.lightBlue,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.d16,
  );
  static const TextStyle textFlashReport = TextStyle(
    color: AppColors.greyShade700,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.d20,
  );
  static const TextStyle textFlatButton = TextStyle(
    color: AppColors.greyShade700,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.d12,
  );
}
