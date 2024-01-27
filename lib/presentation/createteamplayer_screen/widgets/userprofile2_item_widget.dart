import '../models/userprofile2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  Userprofile2ItemWidget(
    this.userprofile2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile2ItemModel userprofile2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.fillTeal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup256,
                  height: 51.adaptSize,
                  width: 51.adaptSize,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgThumbsUp,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(
                    left: 124.h,
                    bottom: 31.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
          Text(
            userprofile2ItemModelObj.userName!,
            style: CustomTextStyles.titleSmallBold,
          ),
        ],
      ),
    );
  }
}
