import '../models/nametext_item_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class NametextItemWidget extends StatelessWidget {
  NametextItemWidget(
    this.nametextItemModelObj, {
    Key? key,
    this.onTapImgCloseImage,
  }) : super(
          key: key,
        );

  NametextItemModel nametextItemModelObj;

  VoidCallback? onTapImgCloseImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: nametextItemModelObj?.closeImage,
            height: 30.v,
            width: 24.h,
            onTap: () {
              onTapImgCloseImage!.call();
            },
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              top: 6.v,
              bottom: 5.v,
            ),
            child: Text(
              nametextItemModelObj.nameText!,
              style: CustomTextStyles.titleSmallBold,
            ),
          ),
        ],
      ),
    );
  }
}
