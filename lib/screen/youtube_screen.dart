import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../Constants.dart';

class YouTubeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyShade900,
      appBar: _appBar(),
      body: _createBody(context),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: AppColors.greyShade900,
      title: Image.network(
        'https://ppe.unc.edu/wp-content/uploads/sites/26/2020/04/yt_logo_rgb_dark.png',
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.cast,
            color: AppColors.white,
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.notifications_none,
            color: AppColors.white,
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.search_rounded,
            color: AppColors.white,
          ),
        ),
        CircleAvatar(
          child: Icon(
            Icons.person,
          ),
        ),
      ],
    );
  }

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: AppColors.greyShade900,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: AppColors.white,
      selectedItemColor: AppColors.red,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: Strings.homeText,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
          ),
          label: Strings.searchText,
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
          label: Strings.channelText,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.video_library_sharp,
          ),
          label: Strings.libraryText,
        ),
      ],
    );
  }

  Widget _createBody(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            _createGenreItem(
              Icons.local_fire_department_sharp,
              Strings.trendingText,
              AppColors.red,
              Icons.music_note,
              Strings.musicText,
              AppColors.greenAccent,
            ),
            _createGenreItem(
              Icons.videogame_asset,
              Strings.gameText,
              AppColors.orange,
              Icons.text_snippet,
              Strings.newsText,
              AppColors.blueAccent,
            ),
            _createGenreItem(
              Icons.lightbulb,
              Strings.learnText,
              AppColors.green,
              Icons.live_tv_outlined,
              Strings.liveText,
              AppColors.deepOrangeAccent,
            ),
            _createGenreItem(
              Icons.sports,
              Strings.sportsText,
              AppColors.lightBlueAccent,
              null,
              '',
              AppColors.greyShade900,
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.all(
            Dimens.d4,
          ),
          child: Text(
            Strings.trendingVideoText,
            style: CommonStyle.textNormal,
          ),
        ),
        Column(
          children: [
            Image.network(
              'https://cdn.pixabay.com/photo/2021/01/14/19/30/water-5917708_960_720.jpg',
            ),
            SizedBox(
              height: Dimens.d8,
            ),
            _createVideoItem(context),
            SizedBox(
              height: Dimens.d8,
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
      top: Dimens.d4,
      bottom: Dimens.d4,
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: containerPadding,
          width: Dimens.d200,
          height: Dimens.d56,
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
                  width: Dimens.d8,
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
          width: Dimens.d200,
          height: Dimens.d56,
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
                  width: Dimens.d8,
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
                width: Dimens.d8,
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
                      Strings.videoTitle,
                      style: CommonStyle.textVideoTitle,
                    ),
                  ),
                  Container(
                    child: Text(
                      Strings.videoDetailText,
                      style: CommonStyle.textVideoShade,
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
