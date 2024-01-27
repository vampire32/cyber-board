import 'models/competition_table_league_three_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/widgets/custom_elevated_button.dart';
import 'package:invovision_s_application1/widgets/custom_text_form_field.dart';
import 'provider/competition_table_league_three_provider.dart';

// ignore_for_file: must_be_immutable
class CompetitionTableLeagueThreePage extends StatefulWidget {
  const CompetitionTableLeagueThreePage({Key? key})
      : super(
          key: key,
        );

  @override
  CompetitionTableLeagueThreePageState createState() =>
      CompetitionTableLeagueThreePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompetitionTableLeagueThreeProvider(),
      child: CompetitionTableLeagueThreePage(),
    );
  }
}

class CompetitionTableLeagueThreePageState
    extends State<CompetitionTableLeagueThreePage>
    with AutomaticKeepAliveClientMixin<CompetitionTableLeagueThreePage> {
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
                      _buildAvalue(context),
                      SizedBox(height: 4.v),
                      _buildNameSurrname(
                        context,
                        nameSurrname: "lbl_name_surrname".tr,
                        eleven: "lbl_11".tr,
                        five: "lbl_5".tr,
                        six: "lbl_6".tr,
                        oneHundredTwelve: "lbl_112".tr,
                        twoHundredThirtyFour: "lbl_234".tr,
                      ),
                      SizedBox(height: 10.v),
                      _buildNameSurrname(
                        context,
                        nameSurrname: "lbl_name_surrname".tr,
                        eleven: "lbl_11".tr,
                        five: "lbl_5".tr,
                        six: "lbl_6".tr,
                        oneHundredTwelve: "lbl_112".tr,
                        twoHundredThirtyFour: "lbl_234".tr,
                      ),
                      SizedBox(height: 10.v),
                      _buildNameSurrname(
                        context,
                        nameSurrname: "lbl_name_surrname".tr,
                        eleven: "lbl_11".tr,
                        five: "lbl_5".tr,
                        six: "lbl_6".tr,
                        oneHundredTwelve: "lbl_112".tr,
                        twoHundredThirtyFour: "lbl_234".tr,
                      ),
                      SizedBox(height: 10.v),
                      _buildNameSurrname(
                        context,
                        nameSurrname: "lbl_name_surrname".tr,
                        eleven: "lbl_11".tr,
                        five: "lbl_5".tr,
                        six: "lbl_6".tr,
                        oneHundredTwelve: "lbl_112".tr,
                        twoHundredThirtyFour: "lbl_234".tr,
                      ),
                      SizedBox(height: 9.v),
                      _buildB(context),
                      SizedBox(height: 3.v),
                      Divider(),
                      SizedBox(height: 4.v),
                      _buildNameSurrname(
                        context,
                        nameSurrname: "lbl_name_surrname".tr,
                        eleven: "lbl_11".tr,
                        five: "lbl_5".tr,
                        six: "lbl_6".tr,
                        oneHundredTwelve: "lbl_112".tr,
                        twoHundredThirtyFour: "lbl_234".tr,
                      ),
                      SizedBox(height: 10.v),
                      _buildNameSurrname(
                        context,
                        nameSurrname: "lbl_name_surrname".tr,
                        eleven: "lbl_11".tr,
                        five: "lbl_5".tr,
                        six: "lbl_6".tr,
                        oneHundredTwelve: "lbl_112".tr,
                        twoHundredThirtyFour: "lbl_234".tr,
                      ),
                      SizedBox(height: 10.v),
                      _buildNameSurrname(
                        context,
                        nameSurrname: "lbl_name_surrname".tr,
                        eleven: "lbl_11".tr,
                        five: "lbl_5".tr,
                        six: "lbl_6".tr,
                        oneHundredTwelve: "lbl_112".tr,
                        twoHundredThirtyFour: "lbl_234".tr,
                      ),
                      SizedBox(height: 10.v),
                      _buildNameSurrname(
                        context,
                        nameSurrname: "lbl_name_surrname".tr,
                        eleven: "lbl_11".tr,
                        five: "lbl_5".tr,
                        six: "lbl_6".tr,
                        oneHundredTwelve: "lbl_112".tr,
                        twoHundredThirtyFour: "lbl_234".tr,
                      ),
                      SizedBox(height: 39.v),
                      CustomElevatedButton(
                        width: 100.h,
                        text: "lbl_start".tr,
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
  Widget _buildAvalue(BuildContext context) {
    return SizedBox(
      height: 20.v,
      width: 340.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
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
          Selector<CompetitionTableLeagueThreeProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.avalueController,
            builder: (context, avalueController, child) {
              return CustomTextFormField(
                width: 340.h,
                controller: avalueController,
                hintText: "lbl_group_a".tr,
                hintStyle: CustomTextStyles.bodySmallBlack900,
                textInputAction: TextInputAction.done,
                alignment: Alignment.bottomCenter,
                borderDecoration: TextFormFieldStyleHelper.underLineBlack,
                filled: false,
              );
            },
          ),
        ],
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

  /// Common widget
  Widget _buildNameSurrname(
    BuildContext context, {
    required String nameSurrname,
    required String eleven,
    required String five,
    required String six,
    required String oneHundredTwelve,
    required String twoHundredThirtyFour,
  }) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.fillTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup256,
            height: 22.adaptSize,
            width: 22.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              top: 2.v,
            ),
            child: Text(
              nameSurrname,
              style: CustomTextStyles.titleSmallBold.copyWith(
                color: appTheme.whiteA700,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              eleven,
              style: theme.textTheme.titleSmall!.copyWith(
                color: appTheme.whiteA700,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 2.v,
            ),
            child: Text(
              five,
              style: theme.textTheme.titleSmall!.copyWith(
                color: appTheme.whiteA700,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 21.h,
              top: 2.v,
            ),
            child: Text(
              six,
              style: theme.textTheme.titleSmall!.copyWith(
                color: appTheme.whiteA700,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              top: 2.v,
            ),
            child: Text(
              oneHundredTwelve,
              style: theme.textTheme.titleSmall!.copyWith(
                color: appTheme.whiteA700,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 2.v,
              right: 15.h,
            ),
            child: Text(
              twoHundredThirtyFour,
              style: theme.textTheme.titleSmall!.copyWith(
                color: appTheme.whiteA700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
