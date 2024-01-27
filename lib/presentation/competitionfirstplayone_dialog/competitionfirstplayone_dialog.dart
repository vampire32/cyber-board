import 'models/competitionfirstplayone_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/widgets/custom_elevated_button.dart';
import 'provider/competitionfirstplayone_provider.dart';

// ignore_for_file: must_be_immutable
class CompetitionfirstplayoneDialog extends StatefulWidget {
  const CompetitionfirstplayoneDialog({Key? key})
      : super(
          key: key,
        );

  @override
  CompetitionfirstplayoneDialogState createState() =>
      CompetitionfirstplayoneDialogState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompetitionfirstplayoneProvider(),
      child: CompetitionfirstplayoneDialog(),
    );
  }
}

class CompetitionfirstplayoneDialogState
    extends State<CompetitionfirstplayoneDialog> {
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
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "lbl_how".tr,
            style: CustomTextStyles.bodySmallBlack900,
          ),
          SizedBox(height: 24.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      height: 90.adaptSize,
                      width: 90.adaptSize,
                      padding: EdgeInsets.all(19.h),
                      decoration: AppDecoration.fillTeal.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup256,
                        height: 51.adaptSize,
                        width: 51.adaptSize,
                        alignment: Alignment.center,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      "lbl_player".tr,
                      style: CustomTextStyles.bodySmallBlack900,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: Column(
                    children: [
                      Opacity(
                        opacity: 0.5,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup385,
                          height: 90.adaptSize,
                          width: 90.adaptSize,
                        ),
                      ),
                      SizedBox(height: 4.v),
                      Text(
                        "lbl_team".tr,
                        style: CustomTextStyles.bodySmallBlack900,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 23.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomElevatedButton(
                  text: "lbl_next".tr,
                  margin: EdgeInsets.only(right: 12.h),
                ),
              ),
              Expanded(
                child: CustomElevatedButton(
                  text: "lbl_back2".tr,
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
