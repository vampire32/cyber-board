import 'models/competitiontableleagueone_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/widgets/custom_elevated_button.dart';
import 'package:invovision_s_application1/widgets/custom_icon_button.dart';
import 'package:invovision_s_application1/widgets/custom_text_form_field.dart';
import 'provider/competitiontableleagueone_provider.dart';

// ignore_for_file: must_be_immutable
class CompetitiontableleagueonePage extends StatefulWidget {
  const CompetitiontableleagueonePage({Key? key})
      : super(
          key: key,
        );

  @override
  CompetitiontableleagueonePageState createState() =>
      CompetitiontableleagueonePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompetitiontableleagueoneProvider(),
      child: CompetitiontableleagueonePage(),
    );
  }
}

class CompetitiontableleagueonePageState
    extends State<CompetitiontableleagueonePage>
    with AutomaticKeepAliveClientMixin<CompetitiontableleagueonePage> {
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
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 12.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.h),
                  child: Column(
                    children: [
                      _buildGroup420(context),
                      SizedBox(height: 4.v),
                      _buildFacebook(context),
                      SizedBox(height: 10.v),
                      _buildEditText(context),
                      SizedBox(height: 10.v),
                      _buildEditText1(context),
                      SizedBox(height: 10.v),
                      _buildFacebook1(context),
                      SizedBox(height: 9.v),
                      _buildB(context),
                      SizedBox(height: 3.v),
                      Divider(),
                      SizedBox(height: 4.v),
                      _buildFacebook2(context),
                      SizedBox(height: 10.v),
                      _buildEditText2(context),
                      SizedBox(height: 10.v),
                      _buildEditText3(context),
                      SizedBox(height: 10.v),
                      _buildFacebook3(context),
                      SizedBox(height: 19.v),
                      Text(
                        "msg_fill_out_the_schedule".tr,
                        style: CustomTextStyles.bodySmallBlack900,
                      ),
                      SizedBox(height: 4.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildRandom(context),
                          _buildManual(context),
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
  Widget _buildGroup419(BuildContext context) {
    return Selector<CompetitiontableleagueoneProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.group419Controller,
      builder: (context, group419Controller, child) {
        return CustomTextFormField(
          width: 340.h,
          controller: group419Controller,
          hintText: "lbl_group_a".tr,
          hintStyle: CustomTextStyles.bodySmallBlack900,
          alignment: Alignment.bottomCenter,
          borderDecoration: TextFormFieldStyleHelper.underLineBlack,
          filled: false,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildGroup420(BuildContext context) {
    return SizedBox(
      height: 20.v,
      width: 340.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          _buildGroup419(context),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(right: 23.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "lbl_loss".tr,
                    style: CustomTextStyles.bodySmallBlack900,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Text(
                      "lbl_draw".tr,
                      style: CustomTextStyles.bodySmallBlack900,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Text(
                      "lbl_win".tr,
                      style: CustomTextStyles.bodySmallBlack900,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Text(
                      "lbl_score".tr,
                      style: CustomTextStyles.bodySmallBlack900,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Text(
                      "lbl_points".tr,
                      style: CustomTextStyles.bodySmallBlack900,
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
  Widget _buildFacebook(BuildContext context) {
    return Selector<CompetitiontableleagueoneProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.facebookController,
      builder: (context, facebookController, child) {
        return CustomTextFormField(
          controller: facebookController,
          prefix: Container(
            margin: EdgeInsets.all(5.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgFacebook,
              height: 32.adaptSize,
              width: 32.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 42.v,
          ),
          borderDecoration: TextFormFieldStyleHelper.fillTeal,
          fillColor: appTheme.teal500.withOpacity(0.6),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEditText(BuildContext context) {
    return Selector<CompetitiontableleagueoneProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.editTextController,
      builder: (context, editTextController, child) {
        return CustomTextFormField(
          controller: editTextController,
          borderDecoration: TextFormFieldStyleHelper.fillTeal,
          fillColor: appTheme.teal500.withOpacity(0.6),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEditText1(BuildContext context) {
    return Selector<CompetitiontableleagueoneProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.editTextController1,
      builder: (context, editTextController1, child) {
        return CustomTextFormField(
          controller: editTextController1,
          borderDecoration: TextFormFieldStyleHelper.fillTeal,
          fillColor: appTheme.teal500.withOpacity(0.6),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFacebook1(BuildContext context) {
    return Container(
      width: 340.h,
      padding: EdgeInsets.all(5.h),
      decoration: AppDecoration.fillTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: CustomIconButton(
        height: 32.adaptSize,
        width: 32.adaptSize,
        child: CustomImageView(),
      ),
    );
  }

  /// Section Widget
  Widget _buildB(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 23.h),
        child: Row(
          children: [
            Text(
              "lbl_group_b".tr,
              style: CustomTextStyles.bodySmallBlack900,
            ),
            Spacer(),
            Text(
              "lbl_loss".tr,
              style: CustomTextStyles.bodySmallBlack900,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Text(
                "lbl_draw".tr,
                style: CustomTextStyles.bodySmallBlack900,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Text(
                "lbl_win".tr,
                style: CustomTextStyles.bodySmallBlack900,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Text(
                "lbl_score".tr,
                style: CustomTextStyles.bodySmallBlack900,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Text(
                "lbl_points".tr,
                style: CustomTextStyles.bodySmallBlack900,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFacebook2(BuildContext context) {
    return Selector<CompetitiontableleagueoneProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.facebookController1,
      builder: (context, facebookController1, child) {
        return CustomTextFormField(
          controller: facebookController1,
          prefix: Container(
            margin: EdgeInsets.all(5.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgFacebook,
              height: 32.adaptSize,
              width: 32.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 42.v,
          ),
          borderDecoration: TextFormFieldStyleHelper.fillTeal,
          fillColor: appTheme.teal500.withOpacity(0.6),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEditText2(BuildContext context) {
    return Selector<CompetitiontableleagueoneProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.editTextController2,
      builder: (context, editTextController2, child) {
        return CustomTextFormField(
          controller: editTextController2,
          borderDecoration: TextFormFieldStyleHelper.fillTeal,
          fillColor: appTheme.teal500.withOpacity(0.6),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEditText3(BuildContext context) {
    return Selector<CompetitiontableleagueoneProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.editTextController3,
      builder: (context, editTextController3, child) {
        return CustomTextFormField(
          controller: editTextController3,
          textInputAction: TextInputAction.done,
          borderDecoration: TextFormFieldStyleHelper.fillTeal,
          fillColor: appTheme.teal500.withOpacity(0.6),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFacebook3(BuildContext context) {
    return Container(
      width: 340.h,
      padding: EdgeInsets.all(5.h),
      decoration: AppDecoration.fillTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: CustomIconButton(
        height: 32.adaptSize,
        width: 32.adaptSize,
        child: CustomImageView(),
      ),
    );
  }

  /// Section Widget
  Widget _buildRandom(BuildContext context) {
    return CustomElevatedButton(
      width: 100.h,
      text: "lbl_random".tr,
    );
  }

  /// Section Widget
  Widget _buildManual(BuildContext context) {
    return CustomElevatedButton(
      width: 100.h,
      text: "lbl_manual".tr,
      margin: EdgeInsets.only(left: 25.h),
    );
  }
}
