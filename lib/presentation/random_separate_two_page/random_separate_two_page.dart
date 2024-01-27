import 'models/random_separate_two_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/widgets/custom_text_form_field.dart';
import 'provider/random_separate_two_provider.dart';

// ignore_for_file: must_be_immutable
class RandomSeparateTwoPage extends StatefulWidget {
  const RandomSeparateTwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  RandomSeparateTwoPageState createState() => RandomSeparateTwoPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RandomSeparateTwoProvider(),
      child: RandomSeparateTwoPage(),
    );
  }
}

class RandomSeparateTwoPageState extends State<RandomSeparateTwoPage>
    with AutomaticKeepAliveClientMixin<RandomSeparateTwoPage> {
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
        resizeToAvoidBottomInset: false,
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
            decoration: AppDecoration.fillWhiteA.copyWith(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgGroup783,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 19.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.h),
                  child: Column(
                    children: [
                      Selector<RandomSeparateTwoProvider,
                          TextEditingController?>(
                        selector: (
                          context,
                          provider,
                        ) =>
                            provider.teamController,
                        builder: (context, teamController, child) {
                          return CustomTextFormField(
                            controller: teamController,
                            hintText: "lbl_team_1".tr,
                            hintStyle: CustomTextStyles.bodySmallBlack900,
                            borderDecoration:
                                TextFormFieldStyleHelper.underLineBlack,
                            filled: false,
                          );
                        },
                      ),
                      SizedBox(height: 4.v),
                      _buildNameSurrname(
                        context,
                        nameSurrname: "lbl_name_surrname".tr,
                      ),
                      SizedBox(height: 10.v),
                      _buildNameSurrname(
                        context,
                        nameSurrname: "lbl_name_surrname".tr,
                      ),
                      SizedBox(height: 19.v),
                      Selector<RandomSeparateTwoProvider,
                          TextEditingController?>(
                        selector: (
                          context,
                          provider,
                        ) =>
                            provider.teamController1,
                        builder: (context, teamController1, child) {
                          return CustomTextFormField(
                            controller: teamController1,
                            hintText: "lbl_team_2".tr,
                            hintStyle: CustomTextStyles.bodySmallBlack900,
                            borderDecoration:
                                TextFormFieldStyleHelper.underLineBlack,
                            filled: false,
                          );
                        },
                      ),
                      SizedBox(height: 4.v),
                      _buildNameSurrname(
                        context,
                        nameSurrname: "lbl_name_surrname".tr,
                      ),
                      SizedBox(height: 10.v),
                      _buildNameSurrname(
                        context,
                        nameSurrname: "lbl_name_surrname".tr,
                      ),
                      SizedBox(height: 19.v),
                      Selector<RandomSeparateTwoProvider,
                          TextEditingController?>(
                        selector: (
                          context,
                          provider,
                        ) =>
                            provider.teamController2,
                        builder: (context, teamController2, child) {
                          return CustomTextFormField(
                            controller: teamController2,
                            hintText: "lbl_team_3".tr,
                            hintStyle: CustomTextStyles.bodySmallBlack900,
                            textInputAction: TextInputAction.done,
                            borderDecoration:
                                TextFormFieldStyleHelper.underLineBlack,
                            filled: false,
                          );
                        },
                      ),
                      SizedBox(height: 4.v),
                      _buildNameSurrname(
                        context,
                        nameSurrname: "lbl_name_surrname".tr,
                      ),
                      SizedBox(height: 10.v),
                      _buildNameSurrname(
                        context,
                        nameSurrname: "lbl_name_surrname".tr,
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
  Widget _buildNameSurrname(
    BuildContext context, {
    required String nameSurrname,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup256,
            height: 30.adaptSize,
            width: 30.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 2.h,
              top: 6.v,
              bottom: 5.v,
            ),
            child: Text(
              nameSurrname,
              style: CustomTextStyles.titleSmallBold.copyWith(
                color: appTheme.whiteA700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
