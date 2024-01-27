import '../models/username_item_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class UsernameItemWidget extends StatelessWidget {
  UsernameItemWidget(
    this.usernameItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UsernameItemModel usernameItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup256,
            height: 30.adaptSize,
            width: 30.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 2.h,
              top: 6.v,
              bottom: 5.v,
            ),
            child: Text(
              usernameItemModelObj.userName!,
              style: CustomTextStyles.titleSmallBold,
            ),
          ),
        ],
      ),
    );
  }
}
