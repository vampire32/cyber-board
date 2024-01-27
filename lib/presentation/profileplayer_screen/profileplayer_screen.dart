import 'models/profileplayer_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:invovision_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:invovision_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:invovision_s_application1/widgets/custom_bottom_bar.dart';
import 'provider/profileplayer_provider.dart';

class ProfileplayerScreen extends StatefulWidget {
  const ProfileplayerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileplayerScreenState createState() => ProfileplayerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileplayerProvider(),
      child: ProfileplayerScreen(),
    );
  }
}

class ProfileplayerScreenState extends State<ProfileplayerScreen> {
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
                ImageConstant.imgGroup629,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 10.v),
            child: Column(
              children: [
                _buildEdit(context),
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
  Widget _buildEdit(BuildContext context) {
    return SizedBox(
      height: 90.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEdit,
            height: 14.adaptSize,
            width: 14.adaptSize,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 10.v,
              right: 10.h,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 139.h,
                vertical: 5.v,
              ),
              decoration: AppDecoration.fillTeal,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 4.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup256,
                    height: 51.adaptSize,
                    width: 51.adaptSize,
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    "lbl_name_surrname".tr,
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
