import 'models/competitionleaguetwo_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/widgets/custom_elevated_button.dart';
import 'package:invovision_s_application1/widgets/custom_text_form_field.dart';
import 'provider/competitionleaguetwo_provider.dart';

// ignore_for_file: must_be_immutable
class CompetitionleaguetwoDialog extends StatefulWidget {
  const CompetitionleaguetwoDialog({Key? key})
      : super(
          key: key,
        );

  @override
  CompetitionleaguetwoDialogState createState() =>
      CompetitionleaguetwoDialogState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompetitionleaguetwoProvider(),
      child: CompetitionleaguetwoDialog(),
    );
  }
}

class CompetitionleaguetwoDialogState
    extends State<CompetitionleaguetwoDialog> {
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
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
          SizedBox(height: 3.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLeaguevalue(BuildContext context) {
    return Selector<CompetitionleaguetwoProvider, TextEditingController?>(
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
    return Selector<CompetitionleaguetwoProvider, TextEditingController?>(
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
}
