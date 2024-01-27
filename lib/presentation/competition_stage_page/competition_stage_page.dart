import 'models/competition_stage_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'provider/competition_stage_provider.dart';

// ignore_for_file: must_be_immutable
class CompetitionStagePage extends StatefulWidget {
  const CompetitionStagePage({Key? key})
      : super(
          key: key,
        );

  @override
  CompetitionStagePageState createState() => CompetitionStagePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompetitionStageProvider(),
      child: CompetitionStagePage(),
    );
  }
}

class CompetitionStagePageState extends State<CompetitionStagePage>
    with AutomaticKeepAliveClientMixin<CompetitionStagePage> {
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
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup629,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillWhiteA.copyWith(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgGroup629,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 8.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      _buildPlayOff(
                        context,
                        playOff: "lbl_league".tr,
                      ),
                      SizedBox(height: 5.v),
                      Padding(
                        padding: EdgeInsets.only(left: 48.h),
                        child: _buildTourCounter(
                          context,
                          tourCounter: "lbl_tour_1".tr,
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Padding(
                        padding: EdgeInsets.only(left: 48.h),
                        child: _buildTourCounter(
                          context,
                          tourCounter: "lbl_tour_2".tr,
                        ),
                      ),
                      SizedBox(height: 10.v),
                      _buildPlayOff(
                        context,
                        playOff: "lbl_play_off".tr,
                      ),
                      SizedBox(height: 5.v),
                      Padding(
                        padding: EdgeInsets.only(left: 48.h),
                        child: _buildTourCounter(
                          context,
                          tourCounter: "lbl_play_off_1_4".tr,
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Container(
                        margin: EdgeInsets.only(left: 83.h),
                        padding: EdgeInsets.all(10.h),
                        decoration: AppDecoration.fillTeal50099.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 2.v),
                              child: Text(
                                "lbl_play_off_1_2".tr,
                                style: CustomTextStyles.titleSmallBold,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgVectorWhiteA700,
                              height: 10.v,
                              width: 5.h,
                              margin: EdgeInsets.only(
                                top: 5.v,
                                right: 2.h,
                                bottom: 5.v,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Container(
                        margin: EdgeInsets.only(left: 107.h),
                        padding: EdgeInsets.all(10.h),
                        decoration: AppDecoration.fillTeal50099.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 3.v),
                              child: Text(
                                "lbl_3rd_place".tr,
                                style: CustomTextStyles.titleSmallBold,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgVectorWhiteA700,
                              height: 10.v,
                              width: 5.h,
                              margin: EdgeInsets.only(
                                top: 5.v,
                                right: 2.h,
                                bottom: 5.v,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.h,
                          vertical: 11.v,
                        ),
                        decoration: AppDecoration.fillTeal50099.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 1.v),
                              child: Text(
                                "lbl_final".tr,
                                style: CustomTextStyles.titleSmallBold,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgVectorWhiteA700,
                              height: 10.v,
                              width: 5.h,
                              margin: EdgeInsets.fromLTRB(124.h, 4.v, 2.h, 4.v),
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
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildTourCounter(
    BuildContext context, {
    required String tourCounter,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              tourCounter,
              style: CustomTextStyles.titleSmallBold.copyWith(
                color: appTheme.whiteA700,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVectorWhiteA700,
            height: 10.v,
            width: 5.h,
            margin: EdgeInsets.only(
              top: 4.v,
              right: 2.h,
              bottom: 4.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildPlayOff(
    BuildContext context, {
    required String playOff,
  }) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.fillTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              playOff,
              style: CustomTextStyles.titleSmallBold.copyWith(
                color: appTheme.whiteA700,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVectorWhiteA700,
            height: 10.v,
            width: 5.h,
            margin: EdgeInsets.only(
              top: 5.v,
              right: 2.h,
              bottom: 5.v,
            ),
          ),
        ],
      ),
    );
  }
}
