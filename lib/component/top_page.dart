import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/Constants.dart';

final containerMargin = const EdgeInsets.only(
  left: Dimens.d20,
  right: Dimens.d20,
);

class TopPage extends StatelessWidget {
  final containerMargin = const EdgeInsets.only(
    left: Dimens.d20,
    right: Dimens.d20,
  );

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 20,
        ),
        Container(
          child: Image.asset(
            'images/netkeiba_viewpager.png',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        _createConvenienceServiceButton(),
        SizedBox(
          height: 20,
        ),
        _createNewPlanInfoTextButton(),
        SizedBox(
          height: 12,
        ),
        _createFlashReport(),
        SizedBox(
          height: 12,
        ),
        _createNewNews(),
        SizedBox(
          height: 12,
        ),
        _createColumnContents(),
      ],
    );
  }
}

Widget _createConvenienceServiceButton() {
  var borderData = BorderSide(
    color: AppColors.lightBlue, //Color of the border
  );

  return Container(
    margin: containerMargin,
    height: 32,
    child: OutlineButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.check_circle_outline,
          ),
          SizedBox(
            width: 4,
          ),
          Text(
            Strings.convenienceText,
            style: CommonStyle.textConvenience,
          ),
          Text(
            Strings.serviceInfoText,
            style: CommonStyle.bold,
          ),
          SizedBox(
            width: 12,
          ),
          Icon(
            Icons.arrow_forward_ios_outlined,
            color: AppColors.lightBlue,
          ),
        ],
      ),
      textColor: AppColors.greyShade700,
      borderSide: borderData,
      onPressed: () {},
    ),
  );
}

Widget _createNewPlanInfoTextButton() {
  return Container(
    margin: containerMargin,
    height: Dimens.d40,
    child: Row(
      children: [
        SizedBox(
          width: Dimens.d8,
        ),
        Icon(
          Icons.info_outline,
          color: AppColors.greyShade500,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            Strings.newPlanText,
          ),
          style: TextButton.styleFrom(
            textStyle: CommonStyle.bold,
            primary: AppColors.netkeibaAppBar,
          ),
        ),
      ],
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(Dimens.d4),
      border: Border.all(color: AppColors.greyShade300),
    ),
  );
}

Widget _createFlashReport() {
  var borderData = BorderSide(
    color: AppColors.netkeibaAppBar, //Color of the border
  );

  return Container(
    padding: EdgeInsets.symmetric(
      horizontal: Dimens.d8,
    ),
    height: 172,
    color: AppColors.greyShade200,
    child: Column(
      children: [
        Row(
          children: [
            Text(
              Strings.flashReportText,
              style: CommonStyle.textFlashReport,
            ),
            Expanded(
              child: SizedBox(
                height: 0,
              ),
            ),
            ButtonTheme(
              height: Dimens.d28,
              child: FlatButton(
                child: Text(
                  Strings.areaListText,
                  style: CommonStyle.textFlatButton,
                ),
                color: AppColors.greyShade300,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          children: [
            Container(
              height: 100,
              width: 120,
              color: AppColors.white,
              child: OutlineButton(
                color: AppColors.white,
                onPressed: () {},
                borderSide: borderData,
                child: Column(
                  children: [
                    SizedBox(
                      height: Dimens.d4,
                    ),
                    Icon(
                      Icons.offline_bolt,
                    ),
                    Text(
                      '水沢1R',
                      style: CommonStyle.netkeibaColor,
                    ),
                    Container(
                      height: 20,
                      child: Text('C2'),
                    ),
                    Container(
                      height: 18,
                      margin: EdgeInsets.only(
                        top: 4,
                        bottom: 4,
                      ),
                      color: AppColors.greyShade300,
                      child: Text('11:50'),
                      padding: EdgeInsets.only(
                        left: 24,
                        right: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Container(
              height: 100,
              width: 120,
              color: AppColors.white,
              child: OutlineButton(
                color: AppColors.white,
                onPressed: () {},
                borderSide: borderData,
                child: Column(
                  children: [
                    SizedBox(
                      height: Dimens.d4,
                    ),
                    Icon(
                      Icons.offline_bolt,
                    ),
                    Text(
                      '名古屋2R',
                      style: CommonStyle.netkeibaColor,
                    ),
                    Container(
                      height: 20,
                      child: Text('C24組'),
                    ),
                    Container(
                      height: 18,
                      margin: EdgeInsets.only(
                        top: 4,
                        bottom: 4,
                      ),
                      color: AppColors.greyShade300,
                      child: Text('11:30'),
                      padding: EdgeInsets.only(
                        left: 24,
                        right: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _createNewNews() {
  return Container(
    padding: EdgeInsets.symmetric(
      horizontal: Dimens.d8,
    ),
    child: Row(
      children: [
        Text(
          Strings.newNewsText,
          style: CommonStyle.textFlashReport,
        ),
        Expanded(
          child: SizedBox(
            height: 0,
          ),
        ),
        ButtonTheme(
          height: Dimens.d28,
          child: FlatButton(
            child: Text(
              Strings.moreSeeText,
              style: CommonStyle.textFlatButton,
            ),
            color: AppColors.greyShade300,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            onPressed: () {},
          ),
        ),
      ],
    ),
  );
}

Widget _createColumnContents(// BuildContext context,
    // ColumnData data,
    ) {
  return Column(
    children: [
      ListTile(
        leading: Image.asset(
          'images/netkeiba_column.png',
          fit: BoxFit.fill,
        ),
        title: Text(
          Strings.columnTitle,
          style: CommonStyle.bold,
        ),
        subtitle: Text(
          '1時間前',
          style: CommonStyle.cardText,
        ),
      ),
      ListTile(
        leading: Image.asset(
          'images/netkeiba_column.png',
        ),
        title: Text(
          Strings.column2Title,
          style: CommonStyle.bold,
        ),
        subtitle: Text(
          '1時間前',
          style: CommonStyle.cardText,
        ),
      ),
    ],
  );
}

class ColumnData {
  final image;
  final title;
  final time;

  ColumnData(
    this.image,
    this.title,
    this.time,
  );
}