import 'models/competition_table_playoff_one_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/widgets/custom_elevated_button.dart';
import 'provider/competition_table_playoff_one_provider.dart';

// ignore_for_file: must_be_immutable
class CompetitionTablePlayoffOnePage extends StatefulWidget {
  const CompetitionTablePlayoffOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  CompetitionTablePlayoffOnePageState createState() =>
      CompetitionTablePlayoffOnePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompetitionTablePlayoffOneProvider(),
      child: CompetitionTablePlayoffOnePage(),
    );
  }
}

class CompetitionTablePlayoffOnePageState
    extends State<CompetitionTablePlayoffOnePage>
    with AutomaticKeepAliveClientMixin<CompetitionTablePlayoffOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 13.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.h),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "lbl_play_off_1_4".tr,
                          style: CustomTextStyles.bodySmallBlack900,
                        ),
                      ),
                      SizedBox(height: 4.v),
                      Divider(),
                      _buildNameTeam(context),
                      _buildLineEight(context),
                      Divider(),
                      SizedBox(height: 187.v),
                      CustomElevatedButton(
                        width: 100.h,
                        text: "lbl_start".tr,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNameTeam(BuildContext context) {
    return SizedBox(
      height: 143.v,
      width: 324.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 143.v,
              child: VerticalDivider(
                width: 1.h,
                thickness: 1.v,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildContrast1(
                    context,
                    nameTeam: "lbl_name_team".tr,
                    vS: "lbl_vs".tr,
                    nameTeam1: "lbl_name_team".tr,
                  ),
                  Column(
                    children: [
                      CustomElevatedButton(
                        height: 42.v,
                        width: 130.h,
                        text: "lbl_name_team".tr,
                        leftIcon: Container(
                          margin: EdgeInsets.only(right: 4.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgContrast,
                            height: 30.v,
                            width: 26.h,
                          ),
                        ),
                        buttonStyle: CustomButtonStyles.fillTealTL101,
                        buttonTextStyle: CustomTextStyles.titleSmallBold,
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        "lbl_vs".tr,
                        style: theme.textTheme.headlineSmall,
                      ),
                      SizedBox(height: 2.v),
                      _buildContrast(
                        context,
                        nameTeam1: "lbl_name_team".tr,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLineEight(BuildContext context) {
    return SizedBox(
      height: 143.v,
      width: 324.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 143.v,
              child: VerticalDivider(
                width: 1.h,
                thickness: 1.v,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildContrast1(
                    context,
                    nameTeam: "lbl_name_team".tr,
                    vS: "lbl_vs".tr,
                    nameTeam1: "lbl_name_team".tr,
                  ),
                  _buildContrast1(
                    context,
                    nameTeam: "lbl_name_team".tr,
                    vS: "lbl_vs".tr,
                    nameTeam1: "lbl_name_team".tr,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildContrast(
    BuildContext context, {
    required String nameTeam1,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillTeal500.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgContrast,
            height: 30.v,
            width: 26.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              top: 6.v,
              bottom: 5.v,
            ),
            child: Text(
              nameTeam1,
              style: CustomTextStyles.titleSmallBold.copyWith(
                color: appTheme.whiteA700,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildContrast1(
    BuildContext context, {
    required String nameTeam,
    required String vS,
    required String nameTeam1,
  }) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 9.h,
            vertical: 6.v,
          ),
          decoration: AppDecoration.fillTeal500.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgContrast,
                height: 30.v,
                width: 26.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 5.h,
                  top: 6.v,
                  bottom: 5.v,
                ),
                child: Text(
                  nameTeam,
                  style: CustomTextStyles.titleSmallBold.copyWith(
                    color: appTheme.whiteA700,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 5.v),
        Text(
          vS,
          style: theme.textTheme.headlineSmall!.copyWith(
            color: appTheme.black900,
          ),
        ),
        SizedBox(height: 2.v),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 9.h,
            vertical: 6.v,
          ),
          decoration: AppDecoration.fillTeal500.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgContrast,
                height: 30.v,
                width: 26.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 5.h,
                  top: 6.v,
                  bottom: 5.v,
                ),
                child: Text(
                  nameTeam1,
                  style: CustomTextStyles.titleSmallBold.copyWith(
                    color: appTheme.whiteA700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
