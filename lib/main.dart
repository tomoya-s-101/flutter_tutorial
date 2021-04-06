import 'package:flutter/material.dart';
import 'package:flutter_app/screen/home_screen.dart';
import 'package:flutter_app/screen/netkeiba_screen.dart';
import 'package:flutter_app/screen/youtube_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const locale = Locale("ja", "JP");
    return MaterialApp(
      title: 'Flutter Demo',
      locale: locale,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        locale,
      ],
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomeScreen(),
        '/youtube': (BuildContext context) => YouTubeScreen(),
        '/netkeiba': (BuildContext context) => NetKeibaScreen(),
      },
    );
  }
}
