import 'package:flutter/material.dart';
import 'package:flutter_app/component/top_page.dart';

import '../Constants.dart';

class CategoryPage extends StatefulWidget {
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 17,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(
            Dimens.d44,
          ),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: AppColors.white,
            flexibleSpace: SafeArea(
              child: TabBar(
                labelPadding: EdgeInsets.all(
                  Dimens.d8,
                ),
                unselectedLabelColor: AppColors.greyShade700,
                labelColor: AppColors.netkeibaAppBar,
                indicatorColor: AppColors.netkeibaAppBar,
                indicatorWeight: 2.0,
                isScrollable: true,
                labelStyle: CommonStyle.bold,
                tabs: <Widget>[
                  Tab(text: Strings.topText),
                  Tab(text: Strings.newsText),
                  Tab(text: Strings.raceText),
                  Tab(text: Strings.bettingTicketText),
                  Tab(text: Strings.columnText),
                  Tab(text: Strings.netKeibaText),
                  Tab(text: Strings.narKeibaText),
                  Tab(text: Strings.dbText),
                  Tab(text: Strings.proText),
                  Tab(text: Strings.ownerText),
                  Tab(text: Strings.pogText),
                  Tab(text: Strings.keibaSquareText),
                  Tab(text: Strings.favText),
                  Tab(text: Strings.conclusionText),
                  Tab(text: Strings.gameText),
                  Tab(text: Strings.myPageText),
                  Tab(text: Strings.accountText),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            TopPage(),
            Text(Strings.newsText),
            Text(Strings.raceText),
            Text(Strings.bettingTicketText),
            Text(Strings.columnText),
            Text(Strings.netKeibaText),
            Text(Strings.narKeibaText),
            Text(Strings.dbText),
            Text(Strings.proText),
            Text(Strings.ownerText),
            Text(Strings.pogText),
            Text(Strings.keibaSquareText),
            Text(Strings.favText),
            Text(Strings.conclusionText),
            Text(Strings.gameText),
            Text(Strings.myPageText),
            Text(Strings.accountText),
          ],
        ),
      ),
    );
  }
}
