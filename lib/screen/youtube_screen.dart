import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class YouTubeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: Image.network(
          'https://ppe.unc.edu/wp-content/uploads/sites/26/2020/04/yt_logo_rgb_dark.png',
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.cast,
              color: Colors.white,
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Colors.white,
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.search_rounded,
              color: Colors.white,
            ),
          ),
          CircleAvatar(
            child: Icon(
              Icons.person,
            ),
          ),
        ],
      ),
      body: _createBody(context),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade900,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: '検索',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_outline,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_library_sharp,
            ),
            label: 'チャンネル',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_library_sharp,
            ),
            label: 'ライブラリ',
          ),
        ],
      ),
    );
  }

  Widget _createBody(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            _createGenreItem(
              Icons.local_fire_department_sharp,
              '急上昇',
              Colors.red,
              Icons.music_note,
              '音楽',
              Colors.greenAccent,
            ),
            _createGenreItem(
              Icons.videogame_asset,
              'ゲーム',
              Colors.orange,
              Icons.text_snippet,
              'ニュース',
              Colors.blueAccent,
            ),
            _createGenreItem(
              Icons.lightbulb,
              '学び',
              Colors.green,
              Icons.live_tv_outlined,
              'ライブ',
              Colors.deepOrangeAccent,
            ),
            _createGenreItem(
              Icons.sports,
              'スポーツ',
              Colors.lightBlueAccent,
              null,
              '',
              Colors.grey.shade900,
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.all(4),
          child: Text(
            '急上昇動画',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
        Column(
          children: [
            Image.network(
              'https://cdn.pixabay.com/photo/2021/01/14/19/30/water-5917708_960_720.jpg',
            ),
            SizedBox(
              height: 8,
            ),
            _createVideoItem(context),
            SizedBox(
              height: 8,
            ),
            Image.network(
              'https://cdn.pixabay.com/photo/2021/01/14/19/30/water-5917708_960_720.jpg',
            ),
          ],
        ),
      ],
    );
  }

  Widget _createGenreItem(
    IconData leftIcon,
    String leftLabel,
    Color leftColor,
    IconData rightIcon,
    String rightLabel,
    Color rightColor,
  ) {
    final containerPadding = const EdgeInsets.only(
      top: 4,
      bottom: 4,
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: containerPadding,
          width: 200,
          height: 56,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: leftColor,
            ),
            child: Row(
              children: [
                Icon(
                  leftIcon,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  leftLabel,
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: containerPadding,
          width: 200,
          height: 56,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: rightColor,
            ),
            child: Row(
              children: [
                Icon(
                  rightIcon,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  rightLabel,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _createVideoItem(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 8,
              ),
              CircleAvatar(
                child: Icon(
                  Icons.person,
                ),
              ),
              Column(
                children: [
                  Container(
                    child: Text(
                      "\"This is ARASHI LIVE 2020. 12. 31\" DigestMovie",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "ARASHI ・ 127万回視聴 ・ 1日前",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
