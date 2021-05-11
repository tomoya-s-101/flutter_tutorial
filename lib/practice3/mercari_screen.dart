import 'package:flutter/material.dart';
import 'package:flutter_app/practice3/mercari_state_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Constants.dart';
import 'model/mercari_item.dart';

final mercariStateNotifier =
StateNotifierProvider((ref) => MercariStateNotifier());

class MercariScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(mercariStateNotifier.state);

    return MaterialApp(
      home: Scaffold(
        appBar: _appBar(),
        body: Stack(
          children: [
            Container(
              child: Center(
                child: state.isReadyData
                    ? _createBody(context, state.mercariItem)
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
        floatingActionButton: _createActionButton(),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: AppColors.white,
      title: Center(
        child: Text(
          Strings.listingText,
          textAlign: TextAlign.center,
          style: CommonStyle.boldBlack,
        ),
      ),
    );
  }

  Widget _createBody(BuildContext context, List<MercariItem> mercariItems) {
    if (mercariItems == null) {
      return Container();
    }
    return ListView.builder(
      itemCount: mercariItems.length,
      itemBuilder: (context, index) {
        final data = mercariItems[index];
        if (index == 0) {
          return Column(
            children: [
              _buildHeader(),
              _buildSubHeader(),
              Divider(),
              _buildProductList(data),
            ],
          );
        } else {
          return Column(
            children: [
              Divider(),
              _buildProductList(data),
            ],
          );
        }
      },
    );
  }

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: AppColors.greyShade900,
      selectedItemColor: AppColors.black,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
          ),
          label: Strings.homeText,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.notifications_none,
          ),
          label: Strings.mercariNewsText,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.camera_alt,
          ),
          label: Strings.listingText,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.qr_code,
          ),
          label: Strings.merpayText,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_outline,
          ),
          label: Strings.myPageText,
        ),
      ],
    );
  }

  Widget _createActionButton() {
    return Container(
      width: Dimens.d72,
      height: Dimens.d72,
      child: FittedBox(
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: AppColors.red,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.camera_alt,
              ),
              Text(
                Strings.listingText,
                style: CommonStyle.fontSizeSmall,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Container(
          color: AppColors.greyShade200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: Dimens.d16,
                ),
                child: Center(
                  child: Image.asset(
                    'images/mercari.png',
                    width: Dimens.d400,
                    height: Dimens.d200,
                  ),
                ),
              ),
              SizedBox(
                height: Dimens.d20,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: Dimens.d16,
                  bottom: Dimens.d12,
                ),
                child: Text(
                  Strings.shortCutText,
                  style: CommonStyle.shortCutText,
                ),
              ),
              SizedBox(
                height: Dimens.d8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCard(
                    Icons.local_see_outlined,
                    Strings.takePictureText,
                  ),
                  _buildCard(
                    Icons.photo_album_outlined,
                    Strings.albumText,
                  ),
                  _buildCard(
                    Icons.qr_code_scanner_outlined,
                    Strings.barcodeText,
                    Strings.bookAndCosmeticText,
                  ),
                  _buildCard(
                    Icons.my_library_books_outlined,
                    Strings.draftListText,
                  ),
                ],
              ),
              SizedBox(
                height: Dimens.d16,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSubHeader() {
    return ListTile(
      title: Text(
        Strings.salesText,
        style: CommonStyle.bold,
      ),
      subtitle: Text(
        Strings.notUseListingText,
        style: CommonStyle.subTitleColor,
      ),
      trailing: Text(
        Strings.seeAllText,
        style: CommonStyle.subTextColor,
      ),
    );
  }

  Widget _buildCard(IconData icon, String text, [String subText = '']) {
    return Card(
      child: Container(
        width: Dimens.d84,
        height: Dimens.d92,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: Dimens.d32,
              color: AppColors.greyShade700,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: CommonStyle.cardText,
            ),
            Text(
              subText,
              textAlign: TextAlign.center,
              style: CommonStyle.cardText,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductList(MercariItem productData) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.d16,
      ),
      child: Row(
        children: [
          Container(
            height: Dimens.d72,
            width: Dimens.d72,
            child: Image.asset(productData.image),
          ),
          SizedBox(
            width: Dimens.d8,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productData.name,
                  style: CommonStyle.bold,
                ),
                SizedBox(
                  height: Dimens.d4,
                ),
                Text(
                  productData.price,
                  style: CommonStyle.bold,
                ),
                SizedBox(
                  height: Dimens.d4,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.local_fire_department_outlined,
                      color: AppColors.lightBlue,
                      size: Dimens.d16,
                    ),
                    SizedBox(
                      width: Dimens.d4,
                    ),
                    Text(
                      '${productData.fav}人が探しています',
                      style: CommonStyle.cardText,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 0,
            ),
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.red,
              borderRadius: BorderRadius.circular(
                Dimens.d4,
              ),
            ),
            width: Dimens.d72,
            height: Dimens.d32,
            child: Text(
              Strings.listText,
              style: CommonStyle.whiteBold,
            ),
          ),
        ],
      ),
    );
  }
}
