import 'models/randomorderone_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/widgets/custom_elevated_button.dart';
import 'provider/randomorderone_provider.dart';

// ignore_for_file: must_be_immutable
class RandomorderoneDialog extends StatefulWidget {
  const RandomorderoneDialog({Key? key})
      : super(
          key: key,
        );

  @override
  RandomorderoneDialogState createState() => RandomorderoneDialogState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RandomorderoneProvider(),
      child: RandomorderoneDialog(),
    );
  }
}

class RandomorderoneDialogState extends State<RandomorderoneDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 263.h,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          _buildNameSurrname(context),
          SizedBox(height: 10.v),
          _buildNameSurrname1(context),
          SizedBox(height: 10.v),
          _buildNameSurrname2(context),
          SizedBox(height: 10.v),
          _buildNameSurrname3(context),
          SizedBox(height: 15.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildStart(context),
              _buildBack(context),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNameSurrname(BuildContext context) {
    return CustomElevatedButton(
      height: 42.v,
      width: 130.h,
      text: "lbl_name_surrname".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 2.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup256,
          height: 30.adaptSize,
          width: 30.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillTealTL10,
      buttonTextStyle: CustomTextStyles.titleSmallBold,
    );
  }

  /// Section Widget
  Widget _buildNameSurrname1(BuildContext context) {
    return CustomElevatedButton(
      height: 42.v,
      width: 130.h,
      text: "lbl_name_surrname".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 2.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup256,
          height: 30.adaptSize,
          width: 30.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillTealTL10,
      buttonTextStyle: CustomTextStyles.titleSmallBold,
    );
  }

  /// Section Widget
  Widget _buildNameSurrname2(BuildContext context) {
    return CustomElevatedButton(
      height: 42.v,
      width: 130.h,
      text: "lbl_name_surrname".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 2.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup256,
          height: 30.adaptSize,
          width: 30.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillTealTL10,
      buttonTextStyle: CustomTextStyles.titleSmallBold,
    );
  }

  /// Section Widget
  Widget _buildNameSurrname3(BuildContext context) {
    return CustomElevatedButton(
      height: 42.v,
      width: 130.h,
      text: "lbl_name_surrname".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 2.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup256,
          height: 30.adaptSize,
          width: 30.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillTealTL10,
      buttonTextStyle: CustomTextStyles.titleSmallBold,
    );
  }

  /// Section Widget
  Widget _buildStart(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        text: "lbl_start".tr,
        margin: EdgeInsets.only(right: 12.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildBack(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        text: "lbl_back2".tr,
        margin: EdgeInsets.only(left: 12.h),
      ),
    );
  }
}
