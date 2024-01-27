import '../models/userprofile3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile3ItemWidget extends StatelessWidget {
  Userprofile3ItemWidget(
    this.userprofile3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile3ItemModel userprofile3ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43.v,
      width: 57.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userprofile3ItemModelObj.stPosition!,
                    style: CustomTextStyles.bodySmallBlack900,
                  ),
                  SizedBox(height: 3.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgUser,
                    height: 25.v,
                    width: 33.h,
                    margin: EdgeInsets.only(left: 4.h),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgPlus,
            height: 10.adaptSize,
            width: 10.adaptSize,
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(bottom: 7.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVectorTeal700,
            height: 2.v,
            width: 10.h,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(bottom: 11.v),
          ),
        ],
      ),
    );
  }
}
