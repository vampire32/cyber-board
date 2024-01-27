import 'models/prizes_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:invovision_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:invovision_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:invovision_s_application1/widgets/custom_bottom_bar.dart';
import 'package:invovision_s_application1/widgets/custom_elevated_button.dart';
import 'provider/prizes_provider.dart';

class PrizesScreen extends StatefulWidget {
  const PrizesScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PrizesScreenState createState() => PrizesScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PrizesProvider(),
      child: PrizesScreen(),
    );
  }
}

class PrizesScreenState extends State<PrizesScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup783,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 10.v),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildNameTeam(context),
                SizedBox(height: 10.v),
                _buildNameTeam1(context),
                SizedBox(height: 62.v),
                CustomElevatedButton(
                  width: 100.h,
                  text: "lbl_clear".tr,
                  rightIcon: Container(
                    margin: EdgeInsets.only(left: 5.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgCheckmark,
                      height: 10.adaptSize,
                      width: 10.adaptSize,
                    ),
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 24.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVector,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 16.v,
          bottom: 16.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_back".tr,
        margin: EdgeInsets.only(left: 5.h),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildNameTeam(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillTeal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.img16124,
                height: 60.v,
                width: 75.h,
              ),
              SizedBox(height: 7.v),
              Text(
                "lbl_naming_1".tr,
                style: CustomTextStyles.titleSmallBold,
              ),
              SizedBox(height: 3.v),
              Text(
                "lbl_league".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 3.v),
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
                buttonStyle: CustomButtonStyles.fillTealTL10,
                buttonTextStyle: CustomTextStyles.titleSmallBold,
              ),
              SizedBox(height: 14.v),
              Text(
                "lbl_prizes_335_00".tr,
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCheckmark,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(
              left: 77.h,
              top: 80.v,
              bottom: 80.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNameTeam1(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillTeal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.img16124,
                height: 60.v,
                width: 75.h,
              ),
              SizedBox(height: 7.v),
              Text(
                "lbl_naming_1".tr,
                style: CustomTextStyles.titleSmallBold,
              ),
              SizedBox(height: 3.v),
              Text(
                "lbl_league".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 3.v),
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
                buttonStyle: CustomButtonStyles.fillTealTL10,
                buttonTextStyle: CustomTextStyles.titleSmallBold,
              ),
              SizedBox(height: 14.v),
              Text(
                "lbl_prizes_335_00".tr,
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
          Opacity(
            opacity: 0.5,
            child: CustomImageView(
              imagePath: ImageConstant.imgComputer,
              height: 18.adaptSize,
              width: 18.adaptSize,
              margin: EdgeInsets.only(
                left: 77.h,
                top: 80.v,
                bottom: 80.v,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
