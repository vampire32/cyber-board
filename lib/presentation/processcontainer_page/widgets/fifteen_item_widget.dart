import '../models/fifteen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class FifteenItemWidget extends StatelessWidget {
  FifteenItemWidget(
    this.fifteenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FifteenItemModel fifteenItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            fifteenItemModelObj.naming1Text!,
            style: CustomTextStyles.titleSmallBold,
          ),
          SizedBox(height: 3.v),
          Text(
            fifteenItemModelObj.leagueText!,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
