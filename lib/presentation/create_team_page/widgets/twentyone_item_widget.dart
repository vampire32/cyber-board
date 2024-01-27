import '../models/twentyone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class TwentyoneItemWidget extends StatelessWidget {
  TwentyoneItemWidget(
    this.twentyoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TwentyoneItemModel twentyoneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.fillTeal,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgUpload,
                height: 20.v,
                width: 18.h,
                margin: EdgeInsets.only(
                  top: 4.v,
                  bottom: 31.v,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgContrast,
                height: 55.v,
                width: 49.h,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgThumbsUp,
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.only(
                  top: 4.v,
                  bottom: 31.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 5.v),
          Text(
            twentyoneItemModelObj.teamNames1Text!,
            style: CustomTextStyles.titleSmallBold,
          ),
        ],
      ),
    );
  }
}
