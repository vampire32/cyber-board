import '../models/fifteen4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Fifteen4ItemWidget extends StatelessWidget {
  Fifteen4ItemWidget(
    this.fifteen4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Fifteen4ItemModel fifteen4ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 142.h,
          vertical: 2.v,
        ),
        decoration: AppDecoration.fillTeal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 1.v),
            CustomImageView(
              imagePath: ImageConstant.img16124,
              height: 60.v,
              width: 75.h,
            ),
            SizedBox(height: 7.v),
            Text(
              fifteen4ItemModelObj.naming1Text!,
              style: CustomTextStyles.titleSmallBold,
            ),
            SizedBox(height: 3.v),
            Text(
              fifteen4ItemModelObj.leagueText!,
              style: theme.textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
