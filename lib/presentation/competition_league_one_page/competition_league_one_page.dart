import 'models/competition_league_one_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/widgets/custom_elevated_button.dart';
import 'provider/competition_league_one_provider.dart';

// ignore_for_file: must_be_immutable
class CompetitionLeagueOnePage extends StatefulWidget {
  const CompetitionLeagueOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  CompetitionLeagueOnePageState createState() =>
      CompetitionLeagueOnePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompetitionLeagueOneProvider(),
      child: CompetitionLeagueOnePage(),
    );
  }
}

class CompetitionLeagueOnePageState extends State<CompetitionLeagueOnePage>
    with AutomaticKeepAliveClientMixin<CompetitionLeagueOnePage> {
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
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 8.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.h),
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img16124,
                        height: 71.v,
                        width: 89.h,
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        "lbl_name_tournament".tr,
                        style: CustomTextStyles.labelLargeBlack900,
                      ),
                      SizedBox(height: 3.v),
                      Text(
                        "lbl_prizes_335_00".tr,
                        style: CustomTextStyles.bodySmallBlack900,
                      ),
                      SizedBox(height: 9.v),
                      _buildName(context),
                      SizedBox(height: 4.v),
                      Divider(),
                      SizedBox(height: 9.v),
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
                      SizedBox(height: 20.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Container(
                              width: 20.adaptSize,
                              margin: EdgeInsets.only(bottom: 1.v),
                              padding: EdgeInsets.symmetric(
                                horizontal: 7.h,
                                vertical: 1.v,
                              ),
                              decoration: AppDecoration.fillTeal700.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Text(
                                "lbl_1".tr,
                                style: CustomTextStyles.labelLargeBlack,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 5.h,
                                top: 3.v,
                              ),
                              child: Text(
                                "lbl_league".tr,
                                style: CustomTextStyles.titleSmallTeal700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 4.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 25.h),
                          child: Row(
                            children: [
                              Container(
                                width: 20.adaptSize,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 2.h,
                                  vertical: 1.v,
                                ),
                                decoration: AppDecoration.fillTeal700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Text(
                                  "lbl_1_12".tr,
                                  style: CustomTextStyles.labelLargeBlack,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5.h),
                                child: Text(
                                  "lbl_tour_1".tr,
                                  style: CustomTextStyles.titleSmallTeal700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 18.v),
                      SizedBox(
                        width: 338.h,
                        child: Text(
                          "msg_on_the_other_hand".tr,
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodySmallBlack900,
                        ),
                      ),
                      SizedBox(height: 20.v),
                      CustomElevatedButton(
                        width: 100.h,
                        text: "lbl_finish".tr,
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
  Widget _buildName(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 10.h,
          right: 23.h,
        ),
        child: Row(
          children: [
            Text(
              "lbl_name2".tr,
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
