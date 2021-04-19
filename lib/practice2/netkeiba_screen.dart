import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/Constants.dart';
import 'package:flutter_app/component/category_page.dart';

class NetKeibaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      drawer: _drawer(context),
      body: _createBody(context),
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

  Widget _createBody(BuildContext context) {
    return Container(
      child: CategoryPage(),
    );
  }
}
