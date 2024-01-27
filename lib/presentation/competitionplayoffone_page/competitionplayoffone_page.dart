import 'models/competitionplayoffone_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/widgets/custom_elevated_button.dart';
import 'provider/competitionplayoffone_provider.dart';

// ignore_for_file: must_be_immutable
class CompetitionplayoffonePage extends StatefulWidget {
  const CompetitionplayoffonePage({Key? key})
      : super(
          key: key,
        );

  @override
  CompetitionplayoffonePageState createState() =>
      CompetitionplayoffonePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompetitionplayoffoneProvider(),
      child: CompetitionplayoffonePage(),
    );
  }
}

class CompetitionplayoffonePageState extends State<CompetitionplayoffonePage>
    with AutomaticKeepAliveClientMixin<CompetitionplayoffonePage> {
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
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup1532,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 8.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img16124,
                        height: 71.v,
                        width: 89.h,
                        alignment: Alignment.center,
                      ),
                      SizedBox(height: 5.v),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "lbl_name_tournament".tr,
                          style: CustomTextStyles.labelLargeBlack900,
                        ),
                      ),
                      SizedBox(height: 3.v),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "lbl_prizes_335_00".tr,
                          style: CustomTextStyles.bodySmallBlack900,
                        ),
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
                      SizedBox(height: 10.v),
                      Row(
                        children: [
                          Container(
                            width: 20.adaptSize,
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
                              top: 2.v,
                            ),
                            child: Text(
                              "lbl_play_off".tr,
                              style: CustomTextStyles.titleSmallTeal700,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.v),
                      Padding(
                        padding: EdgeInsets.only(left: 25.h),
                        child: _buildWidget(
                          context,
                          widget: "lbl_1_12".tr,
                          playOffTwelve: "lbl_play_off_1_4".tr,
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Padding(
                        padding: EdgeInsets.only(left: 50.h),
                        child: _buildWidget(
                          context,
                          widget: "lbl_1_2".tr,
                          playOffTwelve: "lbl_play_off_1_2".tr,
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Padding(
                        padding: EdgeInsets.only(left: 76.h),
                        child: Row(
                          children: [
                            Container(
                              width: 20.adaptSize,
                              padding: EdgeInsets.symmetric(
                                horizontal: 2.h,
                                vertical: 1.v,
                              ),
                              decoration: AppDecoration.fillTeal700.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Text(
                                "lbl_1_3".tr,
                                style: CustomTextStyles.labelLargeBlack,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 5.h,
                                top: 2.v,
                              ),
                              child: Text(
                                "lbl_3rd_place".tr,
                                style: CustomTextStyles.titleSmallTeal700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Padding(
                        padding: EdgeInsets.only(left: 101.h),
                        child: Row(
                          children: [
                            Container(
                              width: 20.adaptSize,
                              padding: EdgeInsets.symmetric(
                                horizontal: 2.h,
                                vertical: 1.v,
                              ),
                              decoration: AppDecoration.fillTeal700.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Text(
                                "lbl_1_42".tr,
                                style: CustomTextStyles.labelLargeBlack,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5.h),
                              child: Text(
                                "lbl_final".tr,
                                style: CustomTextStyles.titleSmallTeal700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 9.v),
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
                      SizedBox(height: 10.v),
                      CustomElevatedButton(
                        width: 100.h,
                        text: "lbl_finish".tr,
                        alignment: Alignment.center,
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
    return Padding(
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

  /// Common widget
  Widget _buildWidget(
    BuildContext context, {
    required String widget,
    required String playOffTwelve,
  }) {
    return Row(
      children: [
        Container(
          width: 20.adaptSize,
          padding: EdgeInsets.symmetric(
            horizontal: 2.h,
            vertical: 1.v,
          ),
          decoration: AppDecoration.fillTeal700.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Text(
            widget,
            style: CustomTextStyles.labelLargeBlack.copyWith(
              color: appTheme.whiteA700,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 5.h,
            top: 2.v,
          ),
          child: Text(
            playOffTwelve,
            style: CustomTextStyles.titleSmallTeal700.copyWith(
              color: appTheme.teal700,
            ),
          ),
        ),
      ],
    );
  }
}
