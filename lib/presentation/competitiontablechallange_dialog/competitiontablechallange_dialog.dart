import '../competitiontablechallange_dialog/widgets/win_item_widget.dart';
import 'models/competitiontablechallange_model.dart';
import 'models/win_item_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/widgets/custom_elevated_button.dart';
import 'package:invovision_s_application1/widgets/custom_text_form_field.dart';
import 'provider/competitiontablechallange_provider.dart';

// ignore_for_file: must_be_immutable
class CompetitiontablechallangeDialog extends StatefulWidget {
  const CompetitiontablechallangeDialog({Key? key})
      : super(
          key: key,
        );

  @override
  CompetitiontablechallangeDialogState createState() =>
      CompetitiontablechallangeDialogState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompetitiontablechallangeProvider(),
      child: CompetitiontablechallangeDialog(),
    );
  }
}

class CompetitiontablechallangeDialogState
    extends State<CompetitiontablechallangeDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: _buildComment(context),
    );
  }

  /// Section Widget
  Widget _buildComment(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 14.h,
        right: 14.h,
        bottom: 185.v,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              right: 5.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
          SizedBox(height: 4.v),
          Divider(),
          SizedBox(height: 4.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 10.v,
            ),
            decoration: AppDecoration.fillTeal.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup256,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  margin: EdgeInsets.only(left: 2.h),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 6.h,
                    top: 2.v,
                  ),
                  child: Text(
                    "lbl_name_surrname".tr,
                    style: CustomTextStyles.titleSmallBold,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text(
                    "lbl_11".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 18.h,
                    top: 2.v,
                  ),
                  child: Text(
                    "lbl_5".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 21.h,
                    top: 2.v,
                  ),
                  child: Text(
                    "lbl_6".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 14.h,
                    top: 2.v,
                  ),
                  child: Text(
                    "lbl_112".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 2.v,
                  ),
                  child: Text(
                    "lbl_234".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Consumer<CompetitiontablechallangeProvider>(
            builder: (context, provider, child) {
              return Wrap(
                runSpacing: 5.v,
                spacing: 5.h,
                children: List<Widget>.generate(
                  provider.competitiontablechallangeModelObj.winItemList.length,
                  (index) {
                    WinItemModel model = provider
                        .competitiontablechallangeModelObj.winItemList[index];

                    return WinItemWidget(
                      model,
                      onSelectedChipView1: (value) {
                        provider.onSelectedChipView1(index, value);
                      },
                    );
                  },
                ),
              );
            },
          ),
          SizedBox(height: 9.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 27.h),
              child: Text(
                "lbl_comment".tr,
                style: CustomTextStyles.bodySmallBlack900,
              ),
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(
              left: 27.h,
              right: 25.h,
            ),
            child: Selector<CompetitiontablechallangeProvider,
                TextEditingController?>(
              selector: (
                context,
                provider,
              ) =>
                  provider.commentController,
              builder: (context, commentController, child) {
                return CustomTextFormField(
                  controller: commentController,
                  hintText: "msg_enter_omment".tr,
                  textInputAction: TextInputAction.done,
                );
              },
            ),
          ),
          SizedBox(height: 9.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVectorTeal700,
                height: 2.v,
                width: 10.h,
                margin: EdgeInsets.only(
                  top: 31.v,
                  bottom: 11.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 5.h),
                        child: Text(
                          "lbl_score".tr,
                          style: CustomTextStyles.bodySmallBlack900,
                        ),
                      ),
                    ),
                    SizedBox(height: 4.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgUser,
                      height: 25.v,
                      width: 33.h,
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgPlus,
                height: 10.adaptSize,
                width: 10.adaptSize,
                margin: EdgeInsets.only(
                  left: 1.h,
                  top: 27.v,
                  bottom: 7.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomElevatedButton(
                width: 100.h,
                text: "lbl_save".tr,
              ),
              CustomElevatedButton(
                width: 100.h,
                text: "lbl_back2".tr,
                margin: EdgeInsets.only(left: 25.h),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
