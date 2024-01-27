import 'models/competitiontableplayoff_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/widgets/custom_elevated_button.dart';
import 'package:invovision_s_application1/widgets/custom_icon_button.dart';
import 'provider/competitiontableplayoff_provider.dart';

// ignore_for_file: must_be_immutable
class CompetitiontableplayoffPage extends StatefulWidget {
  const CompetitiontableplayoffPage({Key? key})
      : super(
          key: key,
        );

  @override
  CompetitiontableplayoffPageState createState() =>
      CompetitiontableplayoffPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompetitiontableplayoffProvider(),
      child: CompetitiontableplayoffPage(),
    );
  }
}

class CompetitiontableplayoffPageState
    extends State<CompetitiontableplayoffPage>
    with AutomaticKeepAliveClientMixin<CompetitiontableplayoffPage> {
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
                      _buildLineEight(context),
                      _buildLineEight1(context),
                      Divider(),
                      SizedBox(height: 169.v),
                      Text(
                        "msg_fill_out_the_schedule".tr,
                        style: CustomTextStyles.bodySmallBlack900,
                      ),
                      SizedBox(height: 4.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomElevatedButton(
                            width: 100.h,
                            text: "lbl_random".tr,
                          ),
                          CustomElevatedButton(
                            width: 100.h,
                            text: "lbl_manual".tr,
                            margin: EdgeInsets.only(left: 25.h),
                          ),
                        ],
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
            child: Container(
              padding: EdgeInsets.all(5.h),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup814,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 88.h),
                    child: _buildFacebook(context),
                  ),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 48.h),
                    child: _buildVs(
                      context,
                      vS: "lbl_vs".tr,
                      vS1: "lbl_vs".tr,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Padding(
                    padding: EdgeInsets.only(right: 88.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFacebook,
                          height: 32.adaptSize,
                          width: 32.adaptSize,
                        ),
                        CustomIconButton(
                          height: 32.adaptSize,
                          width: 32.adaptSize,
                          child: CustomImageView(),
                        ),
                      ],
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

  /// Section Widget
  Widget _buildLineEight1(BuildContext context) {
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
            child: Container(
              padding: EdgeInsets.all(5.h),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup814,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 88.h),
                    child: _buildFacebook(context),
                  ),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 48.h),
                    child: _buildVs(
                      context,
                      vS: "lbl_vs".tr,
                      vS1: "lbl_vs".tr,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Padding(
                    padding: EdgeInsets.only(right: 88.h),
                    child: _buildFacebook(context),
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
  Widget _buildFacebook(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgFacebook,
          height: 32.adaptSize,
          width: 32.adaptSize,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgFacebook,
          height: 32.adaptSize,
          width: 32.adaptSize,
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildVs(
    BuildContext context, {
    required String vS,
    required String vS1,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          vS,
          style: theme.textTheme.headlineSmall!.copyWith(
            color: appTheme.black900,
          ),
        ),
        Text(
          vS1,
          style: theme.textTheme.headlineSmall!.copyWith(
            color: appTheme.black900,
          ),
        ),
      ],
    );
  }
}
