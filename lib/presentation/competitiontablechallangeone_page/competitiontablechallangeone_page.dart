import 'models/competitiontablechallangeone_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/widgets/custom_elevated_button.dart';
import 'package:invovision_s_application1/widgets/custom_text_form_field.dart';
import 'provider/competitiontablechallangeone_provider.dart';

// ignore_for_file: must_be_immutable
class CompetitiontablechallangeonePage extends StatefulWidget {
  const CompetitiontablechallangeonePage({Key? key})
      : super(
          key: key,
        );

  @override
  CompetitiontablechallangeonePageState createState() =>
      CompetitiontablechallangeonePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompetitiontablechallangeoneProvider(),
      child: CompetitiontablechallangeonePage(),
    );
  }
}

class CompetitiontablechallangeonePageState
    extends State<CompetitiontablechallangeonePage>
    with AutomaticKeepAliveClientMixin<CompetitiontablechallangeonePage> {
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
                SizedBox(height: 7.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.h),
                  child: Column(
                    children: [
                      _buildDisciplinevalue(context),
                      SizedBox(height: 8.v),
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
                      SizedBox(height: 169.v),
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
  Widget _buildDisciplinevalue(BuildContext context) {
    return SizedBox(
      height: 21.v,
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
          Selector<CompetitiontablechallangeoneProvider,
              TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.disciplinevalueController,
            builder: (context, disciplinevalueController, child) {
              return CustomTextFormField(
                width: 340.h,
                controller: disciplinevalueController,
                hintText: "lbl_discipline_12".tr,
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
      padding: EdgeInsets.symmetric(
        horizontal: 5.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup256,
            height: 22.adaptSize,
            width: 22.adaptSize,
            margin: EdgeInsets.only(left: 5.h),
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
            ),
            child: Text(
              twoHundredThirtyFour,
              style: theme.textTheme.titleSmall!.copyWith(
                color: appTheme.whiteA700,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgClose,
            height: 10.v,
            width: 14.h,
            margin: EdgeInsets.only(
              left: 7.h,
              top: 6.v,
              bottom: 6.v,
            ),
          ),
        ],
      ),
    );
  }
}
