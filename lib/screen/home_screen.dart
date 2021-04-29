import 'package:flutter/material.dart';

import '../Constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/youtube');
              },
              child: Text(
                Strings.youtubeText,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/netkeiba');
              },
              child: Text(
                Strings.netKeibaText,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/mercari');
              },
              child: Text(
                Strings.mercariText,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/async');
              },
              child: Text(
                Strings.asyncText,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/qiita');
              },
              child: Text(
                Strings.qiitaText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
