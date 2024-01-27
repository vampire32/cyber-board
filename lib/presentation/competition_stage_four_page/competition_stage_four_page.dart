import 'models/competition_stage_four_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'provider/competition_stage_four_provider.dart';

// ignore_for_file: must_be_immutable
class CompetitionStageFourPage extends StatefulWidget {
  const CompetitionStageFourPage({Key? key})
      : super(
          key: key,
        );

  @override
  CompetitionStageFourPageState createState() =>
      CompetitionStageFourPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompetitionStageFourProvider(),
      child: CompetitionStageFourPage(),
    );
  }
}

class CompetitionStageFourPageState extends State<CompetitionStageFourPage>
    with AutomaticKeepAliveClientMixin<CompetitionStageFourPage> {
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
                _buildChallenge(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildChallenge(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 9.v,
            ),
            decoration: AppDecoration.fillTeal.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 4.v),
                  child: Text(
                    "lbl_challenge2".tr,
                    style: CustomTextStyles.titleSmallBold,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVectorWhiteA700,
                  height: 10.v,
                  width: 5.h,
                  margin: EdgeInsets.only(
                    top: 4.v,
                    right: 2.h,
                    bottom: 6.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(left: 48.h),
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 9.v,
              ),
              decoration: AppDecoration.fillTeal.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 4.v),
                    child: Text(
                      "lbl_discipline_1".tr,
                      style: CustomTextStyles.titleSmallBold,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorWhiteA700,
                    height: 10.v,
                    width: 5.h,
                    margin: EdgeInsets.only(
                      top: 4.v,
                      right: 2.h,
                      bottom: 6.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
