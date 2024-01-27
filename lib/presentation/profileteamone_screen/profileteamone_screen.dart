import 'models/profileteamone_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/widgets/custom_bottom_bar.dart';
import 'package:invovision_s_application1/widgets/custom_elevated_button.dart';
import 'provider/profileteamone_provider.dart';

class ProfileteamoneScreen extends StatefulWidget {
  const ProfileteamoneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileteamoneScreenState createState() => ProfileteamoneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileteamoneProvider(),
      child: ProfileteamoneScreen(),
    );
  }
}

class ProfileteamoneScreenState extends State<ProfileteamoneScreen> {
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
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                Container(
                  height: 40.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: appTheme.teal700,
                  ),
                ),
                SizedBox(height: 10.v),
                _buildVector(context),
                SizedBox(height: 15.v),
                _buildNinetyFour(
                  context,
                  cOMPETITIONS: "lbl_wins".tr,
                  five: "lbl_15".tr,
                ),
                SizedBox(height: 10.v),
                _buildNinetyFour(
                  context,
                  cOMPETITIONS: "lbl_competitions".tr,
                  five: "lbl_5".tr,
                ),
                SizedBox(height: 15.v),
                _buildNameSurrname5(context),
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
  Widget _buildVector(BuildContext context) {
    return SizedBox(
      height: 90.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.fromLTRB(97.h, 9.v, 10.h, 65.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVector,
                    height: 8.v,
                    width: 4.h,
                    margin: EdgeInsets.symmetric(vertical: 3.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.h),
                    child: Text(
                      "lbl_back".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgEdit,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 144.h,
                vertical: 5.v,
              ),
              decoration: AppDecoration.fillTeal,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgContrast,
                    height: 55.v,
                    width: 49.h,
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    "lbl_team_names_1".tr,
                    style: CustomTextStyles.titleSmallBold,
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
  Widget _buildNameSurrname(BuildContext context) {
    return CustomElevatedButton(
      height: 42.v,
      width: 130.h,
      text: "lbl_name_surrname".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 5.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup256,
          height: 24.adaptSize,
          width: 24.adaptSize,
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
        margin: EdgeInsets.only(right: 5.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup256,
          height: 24.adaptSize,
          width: 24.adaptSize,
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
        margin: EdgeInsets.only(right: 5.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup256,
          height: 24.adaptSize,
          width: 24.adaptSize,
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
        margin: EdgeInsets.only(right: 5.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup256,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillTealTL10,
      buttonTextStyle: CustomTextStyles.titleSmallBold,
    );
  }

  /// Section Widget
  Widget _buildNameSurrname4(BuildContext context) {
    return CustomElevatedButton(
      height: 42.v,
      width: 130.h,
      text: "lbl_name_surrname".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 5.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup256,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillTealTL10,
      buttonTextStyle: CustomTextStyles.titleSmallBold,
    );
  }

  /// Section Widget
  Widget _buildNameSurrname5(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.h,
        right: 10.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_squad".tr,
                style: CustomTextStyles.bodySmallBlack900,
              ),
              SizedBox(height: 8.v),
              Row(
                children: [
                  _buildNameSurrname(context),
                  CustomImageView(
                    imagePath: ImageConstant.imgClose,
                    height: 12.v,
                    width: 16.h,
                    margin: EdgeInsets.only(
                      left: 10.h,
                      top: 15.v,
                      bottom: 15.v,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.v),
              Row(
                children: [
                  _buildNameSurrname1(context),
                  CustomImageView(
                    imagePath: ImageConstant.imgClose,
                    height: 12.v,
                    width: 16.h,
                    margin: EdgeInsets.only(
                      left: 10.h,
                      top: 15.v,
                      bottom: 15.v,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.v),
              Row(
                children: [
                  _buildNameSurrname2(context),
                  CustomImageView(
                    imagePath: ImageConstant.imgClose,
                    height: 12.v,
                    width: 16.h,
                    margin: EdgeInsets.only(
                      left: 10.h,
                      top: 15.v,
                      bottom: 15.v,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.v),
              Row(
                children: [
                  _buildNameSurrname3(context),
                  CustomImageView(
                    imagePath: ImageConstant.imgClose,
                    height: 12.v,
                    width: 16.h,
                    margin: EdgeInsets.only(
                      left: 10.h,
                      top: 15.v,
                      bottom: 15.v,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.v),
              Row(
                children: [
                  _buildNameSurrname4(context),
                  CustomImageView(
                    imagePath: ImageConstant.imgClose,
                    height: 12.v,
                    width: 16.h,
                    margin: EdgeInsets.only(
                      left: 10.h,
                      top: 15.v,
                      bottom: 15.v,
                    ),
                  ),
                ],
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFacebook,
            height: 40.adaptSize,
            width: 40.adaptSize,
            margin: EdgeInsets.only(bottom: 234.v),
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

  /// Common widget
  Widget _buildNinetyFour(
    BuildContext context, {
    required String cOMPETITIONS,
    required String five,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 145.h,
        vertical: 2.v,
      ),
      decoration: AppDecoration.fillTeal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          Text(
            cOMPETITIONS,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.whiteA700,
            ),
          ),
          SizedBox(height: 5.v),
          Text(
            five,
            style: theme.textTheme.titleSmall!.copyWith(
              color: appTheme.whiteA700,
            ),
          ),
        ],
      ),
    );
  }
}
