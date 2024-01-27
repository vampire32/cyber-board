import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
    this.show,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  VoidCallback? show;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.fillTeal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUpload,
            height: 20.v,
            width: 18.h,
            margin: EdgeInsets.only(
              top: 7.v,
              bottom: 77.v,
            ),
          ),
          GestureDetector(
            onTap: () {
              show!.call();
            },
            child: Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img16124,
                    height: 60.v,
                    width: 75.h,
                  ),
                  SizedBox(height: 7.v),
                  Text(
                    userprofileItemModelObj.naming1Text!,
                    style: CustomTextStyles.titleSmallBold,
                  ),
                  SizedBox(height: 3.v),
                  Text(
                    userprofileItemModelObj.leagueText!,
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgThumbsUp,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              top: 7.v,
              bottom: 77.v,
            ),
          ),
        ],
      ),
    );
  }
}
