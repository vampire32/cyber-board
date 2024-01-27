import 'models/competition_stageone_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'provider/competition_stageone_provider.dart';

// ignore_for_file: must_be_immutable
class CompetitionStageonePage extends StatefulWidget {
  const CompetitionStageonePage({Key? key})
      : super(
          key: key,
        );

  @override
  CompetitionStageonePageState createState() => CompetitionStageonePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompetitionStageoneProvider(),
      child: CompetitionStageonePage(),
    );
  }
}

class CompetitionStageonePageState extends State<CompetitionStageonePage>
    with AutomaticKeepAliveClientMixin<CompetitionStageonePage> {
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
                _buildPlayOff(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPlayOff(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
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
                    "lbl_play_off".tr,
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
            margin: EdgeInsets.only(left: 48.h),
            padding: EdgeInsets.all(10.h),
            decoration: AppDecoration.fillTeal.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text(
                    "lbl_play_off_1_4".tr,
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
            margin: EdgeInsets.only(left: 83.h),
            padding: EdgeInsets.all(10.h),
            decoration: AppDecoration.fillRedA40099.copyWith(
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
            decoration: AppDecoration.fillRedA.copyWith(
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
            decoration: AppDecoration.fillRedA.copyWith(
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
    );
  }
}
