import 'package:flutter/material.dart';
import 'package:flutter_app/screen/netkeiba_screen.dart';
import 'package:flutter_app/screen/youtube_screen.dart';

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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => YouTubeScreen(),
                  ),
                );
              },
              child: Text(
                Strings.youtubeText,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NetKeibaScreen(),
                  ),
                );
              },
              child: Text(
                Strings.netKeibaText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
