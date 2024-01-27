import 'models/randomseparate_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/core/utils/validation_functions.dart';
import 'package:invovision_s_application1/widgets/custom_elevated_button.dart';
import 'package:invovision_s_application1/widgets/custom_icon_button.dart';
import 'package:invovision_s_application1/widgets/custom_text_form_field.dart';
import 'provider/randomseparate_provider.dart';

// ignore_for_file: must_be_immutable
class RandomseparateDialog extends StatefulWidget {
  const RandomseparateDialog({Key? key})
      : super(
          key: key,
        );

  @override
  RandomseparateDialogState createState() => RandomseparateDialogState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RandomseparateProvider(),
      child: RandomseparateDialog(),
    );
  }
}

class RandomseparateDialogState extends State<RandomseparateDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 263.h,
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "lbl_name_group".tr,
              style: CustomTextStyles.bodySmallBlack900,
            ),
          ),
          SizedBox(height: 3.v),
          _buildName(context),
          SizedBox(height: 5.v),
          _buildVector(
            context,
            participantsIn: "msg_participants_in2".tr,
            five: "lbl_2".tr,
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "lbl_name_group".tr,
              style: CustomTextStyles.bodySmallBlack900,
            ),
          ),
          SizedBox(height: 3.v),
          _buildName1(context),
          SizedBox(height: 5.v),
          _buildVector(
            context,
            participantsIn: "msg_participants_in2".tr,
            five: "lbl_5".tr,
          ),
          SizedBox(height: 10.v),
          CustomIconButton(
            height: 30.adaptSize,
            width: 30.adaptSize,
            child: CustomImageView(),
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildStart(context),
                _buildBack(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Selector<RandomseparateProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.nameController,
      builder: (context, nameController, child) {
        return CustomTextFormField(
          controller: nameController,
          hintText: "msg_enter_name_group".tr,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildName1(BuildContext context) {
    return Selector<RandomseparateProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.nameController1,
      builder: (context, nameController1, child) {
        return CustomTextFormField(
          controller: nameController1,
          hintText: "msg_enter_name_group".tr,
          textInputAction: TextInputAction.done,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        );
      },
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

  /// Common widget
  Widget _buildVector(
    BuildContext context, {
    required String participantsIn,
    required String five,
  }) {
    return SizedBox(
      height: 43.v,
      width: 89.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.fromLTRB(16.h, 26.v, 16.h, 7.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CustomImageView(
                      imagePath: ImageConstant.imgVectorTeal700,
                      height: 2.v,
                      width: 10.h,
                      margin: EdgeInsets.only(
                        top: 4.v,
                        right: 18.h,
                        bottom: 4.v,
                      ),
                    ),
                  ),
                  Expanded(
                    child: CustomImageView(
                      imagePath: ImageConstant.imgPlus,
                      height: 10.adaptSize,
                      width: 10.adaptSize,
                      margin: EdgeInsets.only(left: 18.h),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  participantsIn,
                  style: CustomTextStyles.bodySmallBlack900.copyWith(
                    color: appTheme.black900,
                  ),
                ),
                SizedBox(height: 3.v),
                SizedBox(
                  height: 25.v,
                  width: 33.h,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgUser,
                        height: 25.v,
                        width: 33.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 13.h),
                          child: Text(
                            five,
                            style:
                                CustomTextStyles.labelLargeBlack900_1.copyWith(
                              color: appTheme.black900,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
