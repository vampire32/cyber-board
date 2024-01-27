import '../models/profileteam_item_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class ProfileteamItemWidget extends StatelessWidget {
  ProfileteamItemWidget(
    this.profileteamItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfileteamItemModel profileteamItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      height: 42.v,
      width: 130.h,
      text: "lbl_name_surrname".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 5.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup256,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillTealTL10,
      buttonTextStyle: CustomTextStyles.titleSmallBold,
    );
  }
}
