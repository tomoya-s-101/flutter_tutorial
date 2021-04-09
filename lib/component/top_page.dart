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
        Container(
          height: 240,
          child: Image.network(
              'https://www.photock.jp/photo/middle/photo0000-4262.jpg'),
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
    height: 180,
    color: AppColors.greyShade200,
    child: Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 8,
            ),
            Text(
              Strings.flashReportText,
              style: CommonStyle.textFlashReport,
            ),
            ButtonTheme(
              minWidth: 20,
              height: 28,
              buttonColor: AppColors.greyShade300,
              child: OutlineButton(
                child: Text(
                  Strings.areaListText,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        Row(
          children: [
            OutlineButton(
              color: AppColors.white,
              onPressed: () {},
              borderSide: borderData,
              child: Column(
                children: [
                  Icon(
                    Icons.offline_bolt,
                  ),
                  Text('水沢1R'),
                  Text('C2'),
                ],
              ),
            ),
            OutlineButton(
              color: AppColors.white,
              onPressed: () {},
              borderSide: borderData,
              child: Column(
                children: [
                  Icon(
                    Icons.offline_bolt,
                  ),
                  Text('名古屋2R'),
                  Text('C24組'),
                ],
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
    child: Row(
      children: [
        SizedBox(
          width: 8,
        ),
        Text(
          Strings.newNewsText,
          style: CommonStyle.textFlashReport,
        ),
        ButtonTheme(
          minWidth: 20,
          height: 28,
          buttonColor: AppColors.greyNetKeibaButton,
          child: OutlineButton(
            child: Text(
              Strings.moreSeeText,
            ),
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
        leading: Image.network(
          'https://www.photock.jp/photo/middle/photo0000-1555.jpg',
        ),
        title: Text(
          Strings.columnTitle,
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
