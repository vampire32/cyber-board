import 'models/competitionchallengeone_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:invovision_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:invovision_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:invovision_s_application1/widgets/custom_bottom_bar.dart';
import 'package:invovision_s_application1/widgets/custom_elevated_button.dart';
import 'package:invovision_s_application1/widgets/custom_icon_button.dart';
import 'package:invovision_s_application1/widgets/custom_text_form_field.dart';
import 'provider/competitionchallengeone_provider.dart';

class CompetitionchallengeoneScreen extends StatefulWidget {
  const CompetitionchallengeoneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CompetitionchallengeoneScreenState createState() =>
      CompetitionchallengeoneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompetitionchallengeoneProvider(),
      child: CompetitionchallengeoneScreen(),
    );
  }
}

class CompetitionchallengeoneScreenState
    extends State<CompetitionchallengeoneScreen> {
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
        resizeToAvoidBottomInset: false,
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
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Spacer(
                  flex: 53,
                ),
                _buildChallenge(context),
                Spacer(
                  flex: 46,
                ),
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
  Widget _buildChallenge(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 34.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Selector<CompetitionchallengeoneProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.challengeController,
            builder: (context, challengeController, child) {
              return CustomTextFormField(
                controller: challengeController,
                hintText: "lbl_challenge".tr,
                hintStyle: CustomTextStyles.bodySmallBlack900,
                borderDecoration: TextFormFieldStyleHelper.underLineBlack,
                filled: false,
              );
            },
          ),
          SizedBox(height: 3.v),
          Text(
            "lbl_name".tr,
            style: CustomTextStyles.bodySmallBlack900,
          ),
          SizedBox(height: 4.v),
          Selector<CompetitionchallengeoneProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.nameController,
            builder: (context, nameController, child) {
              return CustomTextFormField(
                controller: nameController,
                hintText: "lbl_discipline_1".tr,
              );
            },
          ),
          SizedBox(height: 9.v),
          Text(
            "lbl_name".tr,
            style: CustomTextStyles.bodySmallBlack900,
          ),
          SizedBox(height: 4.v),
          Selector<CompetitionchallengeoneProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.nameController1,
            builder: (context, nameController1, child) {
              return CustomTextFormField(
                controller: nameController1,
                hintText: "lbl_discipline_2".tr,
                textInputAction: TextInputAction.done,
              );
            },
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 43.v,
              width: 201.h,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 7.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 43.v,
                            width: 49.h,
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 6.h),
                                  child: _buildSixtyFive(
                                    context,
                                    rdPosition: "lbl_1st_position".tr,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgPlus,
                                  height: 10.adaptSize,
                                  width: 10.adaptSize,
                                  alignment: Alignment.bottomRight,
                                  margin: EdgeInsets.only(bottom: 7.v),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 43.v,
                            width: 57.h,
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 7.h,
                                      right: 5.h,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "lbl_2nd_position".tr,
                                          style: CustomTextStyles
                                              .bodySmallBlack900,
                                        ),
                                        SizedBox(height: 3.v),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgUser,
                                          height: 25.v,
                                          width: 33.h,
                                          margin: EdgeInsets.only(left: 5.h),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgPlus,
                                  height: 10.adaptSize,
                                  width: 10.adaptSize,
                                  alignment: Alignment.bottomRight,
                                  margin: EdgeInsets.only(bottom: 7.v),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgVectorTeal700,
                                  height: 2.v,
                                  width: 10.h,
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(bottom: 11.v),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 43.v,
                            width: 51.h,
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: _buildSixtyFive(
                                    context,
                                    rdPosition: "lbl_3rd_position".tr,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgVectorTeal700,
                                  height: 2.v,
                                  width: 10.h,
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(bottom: 11.v),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgPlus,
                    height: 10.adaptSize,
                    width: 10.adaptSize,
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(bottom: 7.v),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorTeal700,
                    height: 2.v,
                    width: 10.h,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(bottom: 11.v),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10.v),
          CustomIconButton(
            height: 31.adaptSize,
            width: 31.adaptSize,
            alignment: Alignment.center,
            child: CustomImageView(),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.h),
              child: Row(
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
            ),
          ),
          SizedBox(height: 7.v),
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
  Widget _buildSixtyFive(
    BuildContext context, {
    required String rdPosition,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          rdPosition,
          style: CustomTextStyles.bodySmallBlack900.copyWith(
            color: appTheme.black900,
          ),
        ),
        SizedBox(height: 3.v),
        CustomImageView(
          imagePath: ImageConstant.imgUser,
          height: 25.v,
          width: 33.h,
          margin: EdgeInsets.only(left: 4.h),
        ),
      ],
    );
  }
}
