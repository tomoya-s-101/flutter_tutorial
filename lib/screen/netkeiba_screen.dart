import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/Constants.dart';

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
      title: Text(
        'netkeiba',
      ),
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
      height: Dimens.d40,
      child: _defaultTabController(),
    );
  }

  DefaultTabController _defaultTabController() {
    return  DefaultTabController(
      // タブの数
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.netkeibaAppBar,
          bottom: TabBar(
            isScrollable: true,
            unselectedLabelColor: AppColors.greyShade500,
            unselectedLabelStyle: TextStyle(fontSize: 12.0),
            labelColor: AppColors.netkeibaAppBar,
            labelStyle: TextStyle(fontSize: 16.0),
            indicatorColor: AppColors.netkeibaAppBar,
            indicatorWeight: 2.0,
            // タブに表示する内容
            tabs: [
              Tab(
                child: Text('Top'),
              ),
              Tab(
                child: Text('Business'),
              ),
              Tab(
                child: Text('Technology'),
              ),
            ],
          ),
          title: Text('Tabs Demo'),
        ),
        body: TabBarView(
          // 各タブの内容
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
