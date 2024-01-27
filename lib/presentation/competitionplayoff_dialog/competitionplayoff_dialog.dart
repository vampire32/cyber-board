import 'models/competitionplayoff_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/widgets/custom_elevated_button.dart';
import 'package:invovision_s_application1/widgets/custom_outlined_button.dart';
import 'provider/competitionplayoff_provider.dart';

// ignore_for_file: must_be_immutable
class CompetitionplayoffDialog extends StatefulWidget {
  const CompetitionplayoffDialog({Key? key})
      : super(
          key: key,
        );

  @override
  CompetitionplayoffDialogState createState() =>
      CompetitionplayoffDialogState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompetitionplayoffProvider(),
      child: CompetitionplayoffDialog(),
    );
  }
}

class CompetitionplayoffDialogState extends State<CompetitionplayoffDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 291.h,
      padding: EdgeInsets.symmetric(
        horizontal: 33.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 43.v,
            width: 102.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(22.h, 26.v, 22.h, 7.v),
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
                        "msg_select_the_number2".tr,
                        style: CustomTextStyles.bodySmallBlack900,
                      ),
                      SizedBox(height: 3.v),
                      SizedBox(
                        height: 25.v,
                        width: 33.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgUser,
                              height: 25.v,
                              width: 33.h,
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "lbl_1_4".tr,
                                style: CustomTextStyles.labelLargeBlack900_1,
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
          ),
          SizedBox(height: 10.v),
          Text(
            "msg_will_there_be_a".tr,
            style: CustomTextStyles.bodySmallBlack900,
          ),
          SizedBox(height: 3.v),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 62.h),
            decoration: AppDecoration.outlineBlack900.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder2,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomOutlinedButton(
                  width: 50.h,
                  text: "lbl_yes".tr,
                  buttonStyle: CustomButtonStyles.outlineBlackTL3,
                  buttonTextStyle: theme.textTheme.bodySmall!,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 19.h,
                    top: 5.v,
                    bottom: 4.v,
                  ),
                  child: Text(
                    "lbl_no".tr,
                    style: CustomTextStyles.bodySmallBlack900,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomElevatedButton(
                  text: "lbl_back2".tr,
                  margin: EdgeInsets.only(right: 12.h),
                ),
              ),
              Expanded(
                child: CustomElevatedButton(
                  text: "lbl_next".tr,
                  margin: EdgeInsets.only(left: 12.h),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
