import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/practice1/youtube_state_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Constants.dart';
import 'model/youtube_item.dart';

final youtubeStateNotifier =
    StateNotifierProvider((ref) => YouTubeStateNotifier());

class YouTubeScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(youtubeStateNotifier.state);

    return Scaffold(
      backgroundColor: AppColors.greyShade900,
      appBar: _appBar(),
      body: Stack(
        children: [
          Container(
            child: Center(
              child: state.isReadyData
                  ? _createBody(context, state.youtubeItem)
                  : Container(),
            ),
          ),
          state.isLoading
              ? Container(
                  color: Color(0x88000000),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : Container(),
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      automaticallyImplyLeading: false,
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

  Widget _createBody(BuildContext context, List<YouTubeItem> youtubeItems) {
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
        ListView.builder(
          shrinkWrap: true,
          itemCount: youtubeItems.length,
          itemBuilder: (context, index) {
            final data = youtubeItems[index];
            return _createVideoItem(
              context,
              data,
            );
          },
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

  Widget _createVideoItem(
    BuildContext context,
    YouTubeItem data,
  ) {
    return Column(
      children: [
        Image.asset(
          data.image,
        ),
        ListTile(
          title: Text(
            data.title,
            style: CommonStyle.textNormal,
          ),
          subtitle: Text(
            data.subtitle,
            style: CommonStyle.textVideoShade,
          ),
          leading: CircleAvatar(
            radius: Dimens.d20,
            child: Icon(
              Icons.person,
            ),
          ),
          trailing: Icon(
            Icons.more_vert,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
