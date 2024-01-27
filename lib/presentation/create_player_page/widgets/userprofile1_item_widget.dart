import '../models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
    this.createplayer,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  VoidCallback? createplayer;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        createplayer!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 5.v,
        ),
        decoration: AppDecoration.fillTeal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 4.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgUpload,
                  height: 20.v,
                  width: 18.h,
                  margin: EdgeInsets.only(bottom: 31.v),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup256,
                  height: 51.adaptSize,
                  width: 51.adaptSize,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgThumbsUp,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(bottom: 31.v),
                ),
              ],
            ),
            SizedBox(height: 5.v),
            Text(
              userprofile1ItemModelObj.nameText!,
              style: CustomTextStyles.titleSmallBold,
            ),
          ],
        ),
      ),
    );
  }
}
