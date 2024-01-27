import 'models/competition_table_playofftwo_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/widgets/custom_elevated_button.dart';
import 'package:invovision_s_application1/widgets/custom_text_form_field.dart';
import 'provider/competition_table_playofftwo_provider.dart';

// ignore_for_file: must_be_immutable
class CompetitionTablePlayofftwoPage extends StatefulWidget {
  const CompetitionTablePlayofftwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  CompetitionTablePlayofftwoPageState createState() =>
      CompetitionTablePlayofftwoPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompetitionTablePlayofftwoProvider(),
      child: CompetitionTablePlayofftwoPage(),
    );
  }
}

class CompetitionTablePlayofftwoPageState
    extends State<CompetitionTablePlayofftwoPage>
    with AutomaticKeepAliveClientMixin<CompetitionTablePlayofftwoPage> {
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
                SizedBox(height: 13.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.h),
                  child: Column(
                    children: [
                      _buildPosition(context),
                      SizedBox(height: 4.v),
                      _buildNameTeam2(context),
                      SizedBox(height: 427.v),
                      _buildStart(context),
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
  Widget _buildPosition(BuildContext context) {
    return Selector<CompetitionTablePlayofftwoProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.positionController,
      builder: (context, positionController, child) {
        return CustomTextFormField(
          controller: positionController,
          hintText: "lbl_3rd_place".tr,
          hintStyle: CustomTextStyles.bodySmallBlack900,
          textInputAction: TextInputAction.done,
          borderDecoration: TextFormFieldStyleHelper.underLineBlack,
          filled: false,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildNameTeam(BuildContext context) {
    return CustomElevatedButton(
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
      buttonStyle: CustomButtonStyles.fillTealTL101,
      buttonTextStyle: CustomTextStyles.titleSmallBold,
    );
  }

  /// Section Widget
  Widget _buildNameTeam1(BuildContext context) {
    return CustomElevatedButton(
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
      buttonStyle: CustomButtonStyles.fillTealTL101,
      buttonTextStyle: CustomTextStyles.titleSmallBold,
    );
  }

  /// Section Widget
  Widget _buildNameTeam2(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildNameTeam(context),
        Padding(
          padding: EdgeInsets.only(
            top: 6.v,
            bottom: 4.v,
          ),
          child: Text(
            "lbl_vs".tr,
            style: theme.textTheme.headlineSmall,
          ),
        ),
        _buildNameTeam1(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildStart(BuildContext context) {
    return CustomElevatedButton(
      width: 100.h,
      text: "lbl_start".tr,
    );
  }
}
