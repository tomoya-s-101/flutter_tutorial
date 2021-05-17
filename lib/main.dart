import 'package:flutter/material.dart';
import 'package:flutter_app/moor/todo_screen.dart';
import 'package:flutter_app/mvvm/qiita_client_screen.dart';
import 'package:flutter_app/practice1/youtube_screen.dart';
import 'package:flutter_app/async/async_screen.dart';
import 'package:flutter_app/screen/home_screen.dart';
import 'package:flutter_app/practice3/mercari_screen.dart';
import 'package:flutter_app/practice2/netkeiba_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
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
        '/': (context) => HomeScreen(),
        '/youtube': (context) => YouTubeScreen(),
        '/mercari': (context) => MercariScreen(),
        '/netkeiba': (context) => NetKeibaScreen(),
        '/async': (context) => AsyncScreen(),
        '/qiita': (context) => QiitaClientScreen(),
        '/moor': (context) => TodoScreen(),
      },
    );
  }
}
