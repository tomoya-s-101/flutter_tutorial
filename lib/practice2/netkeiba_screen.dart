import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/Constants.dart';
import 'package:flutter_app/component/category_page.dart';
import 'package:flutter_app/practice2/netkeiba_state_notifire.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'model/netkeiba_item.dart';

final netkeibaStateNotifier = StateNotifierProvider((ref) => NetkeibaStateNotifier());

class NetKeibaScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(netkeibaStateNotifier.state);

    return Scaffold(
      appBar: _appBar(),
      drawer: _drawer(context),
      body: Stack(
        children: [
          Container(
            child: Center(
              child: state.isReadyData
                  ? _createBody(context, state.netkeibaItem)
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
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: AppColors.netkeibaAppBar,
      centerTitle: false,
      title: Image.asset(
        'images/netkeiba_title.png',
        fit: BoxFit.cover,
        height: Dimens.d16,
      ),
      actions: [
        IconButton(
          icon: Image.asset(
            'images/netkeiba_icon.png',
          ),
          iconSize: Dimens.d72,
          onPressed: () {},
        )
      ],
    );
  }

  Drawer _drawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Messages'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
          ),
          ListTile(
            leading: Icon(Icons.close),
            title: Text('Colse Drawer'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  Widget _createBody(BuildContext context, List<NetkeibaItem> netkeibaItems) {
    return Container(
      child: CategoryPage(),
    );
  }
}
