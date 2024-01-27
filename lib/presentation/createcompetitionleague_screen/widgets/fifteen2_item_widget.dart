import '../models/fifteen2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Fifteen2ItemWidget extends StatelessWidget {
  Fifteen2ItemWidget(
    this.fifteen2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Fifteen2ItemModel fifteen2ItemModelObj;

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
              fifteen2ItemModelObj.text1!,
              style: CustomTextStyles.titleSmallBold,
            ),
            SizedBox(height: 3.v),
            Text(
              fifteen2ItemModelObj.text2!,
              style: theme.textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
