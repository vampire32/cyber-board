import 'models/competitionleague_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/widgets/custom_elevated_button.dart';
import 'package:invovision_s_application1/widgets/custom_text_form_field.dart';
import 'provider/competitionleague_provider.dart';

// ignore_for_file: must_be_immutable
class CompetitionleagueDialog extends StatefulWidget {
  const CompetitionleagueDialog({Key? key})
      : super(
          key: key,
        );

  @override
  CompetitionleagueDialogState createState() => CompetitionleagueDialogState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompetitionleagueProvider(),
      child: CompetitionleagueDialog(),
    );
  }
}

class CompetitionleagueDialogState extends State<CompetitionleagueDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 291.h,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          _buildLeaguevalue(context),
          SizedBox(height: 3.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "lbl_name".tr,
              style: CustomTextStyles.bodySmallBlack900,
            ),
          ),
          SizedBox(height: 4.v),
          _buildName(context),
          SizedBox(height: 5.v),
          SizedBox(
            height: 43.v,
            width: 103.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(16.h, 26.v, 30.h, 7.v),
                  child: _buildVector(context),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_select_the_number".tr,
                        style: CustomTextStyles.bodySmallBlack900,
                      ),
                      SizedBox(height: 3.v),
                      Padding(
                        padding: EdgeInsets.only(left: 28.h),
                        child: _buildUser(
                          context,
                          two: "lbl_2".tr,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          SizedBox(
            height: 43.v,
            width: 76.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(9.h, 26.v, 9.h, 7.v),
                  child: _buildVector(context),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "msg_participants_in".tr,
                        style: CustomTextStyles.bodySmallBlack900,
                      ),
                      SizedBox(height: 3.v),
                      _buildUser(
                        context,
                        two: "lbl_2".tr,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 17.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildBack(context),
                _buildNext(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLeaguevalue(BuildContext context) {
    return Selector<CompetitionleagueProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.leaguevalueController,
      builder: (context, leaguevalueController, child) {
        return CustomTextFormField(
          controller: leaguevalueController,
          hintText: "lbl_league2".tr,
          hintStyle: CustomTextStyles.bodySmallBlack900,
          borderDecoration: TextFormFieldStyleHelper.underLineBlack,
          filled: false,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Selector<CompetitionleagueProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.nameController,
      builder: (context, nameController, child) {
        return CustomTextFormField(
          controller: nameController,
          hintText: "lbl_tour_1".tr,
          textInputAction: TextInputAction.done,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildBack(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        text: "lbl_back2".tr,
        margin: EdgeInsets.only(right: 12.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        text: "lbl_next".tr,
        margin: EdgeInsets.only(left: 12.h),
      ),
    );
  }

  /// Common widget
  Widget _buildVector(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomImageView(
            imagePath: ImageConstant.imgVectorTeal700,
            height: 2.v,
            width: 10.h,
            margin: EdgeInsets.only(
              top: 4.v,
              right: 18.h,
              bottom: 4.v,
            ),
          ),
        ),
        Expanded(
          child: CustomImageView(
            imagePath: ImageConstant.imgPlus,
            height: 10.adaptSize,
            width: 10.adaptSize,
            margin: EdgeInsets.only(left: 18.h),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildUser(
    BuildContext context, {
    required String two,
  }) {
    return SizedBox(
      height: 25.v,
      width: 33.h,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUser,
            height: 25.v,
            width: 33.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 13.h),
              child: Text(
                two,
                style: CustomTextStyles.labelLargeBlack900_1.copyWith(
                  color: appTheme.black900,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
