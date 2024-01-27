import '../createcompetitionone_screen/widgets/fifteen4_item_widget.dart';
import '../createcompetitionone_screen/widgets/sixtynine_item_widget.dart';
import 'models/createcompetitionone_model.dart';
import 'models/fifteen4_item_model.dart';
import 'models/sixtynine_item_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/core/utils/validation_functions.dart';
import 'package:invovision_s_application1/widgets/custom_bottom_bar.dart';
import 'package:invovision_s_application1/widgets/custom_elevated_button.dart';
import 'package:invovision_s_application1/widgets/custom_text_form_field.dart';
import 'provider/createcompetitionone_provider.dart';

class CreatecompetitiononeScreen extends StatefulWidget {
  const CreatecompetitiononeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CreatecompetitiononeScreenState createState() =>
      CreatecompetitiononeScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CreatecompetitiononeProvider(),
      child: CreatecompetitiononeScreen(),
    );
  }
}

class CreatecompetitiononeScreenState
    extends State<CreatecompetitiononeScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: SizedBox(
              height: SizeUtils.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgGroup629,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildNine(context),
                          _buildTabMenu(context),
                          SizedBox(height: 8.v),
                          SizedBox(
                            height: 487.v,
                            width: double.maxFinite,
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                _buildFifteen(context),
                                CustomImageView(
                                  imagePath: ImageConstant.imgFacebook,
                                  height: 40.adaptSize,
                                  width: 40.adaptSize,
                                  alignment: Alignment.bottomRight,
                                  margin: EdgeInsets.only(right: 10.h),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 68.v),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.h,
                        vertical: 36.v,
                      ),
                      decoration: AppDecoration.fillWhiteA700,
                      child: Container(
                        margin: EdgeInsets.only(left: 1.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.h,
                          vertical: 24.v,
                        ),
                        decoration: AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.img16124,
                                  height: 25.v,
                                  width: 31.h,
                                ),
                                _buildName(context),
                              ],
                            ),
                            SizedBox(height: 10.v),
                            Container(
                              height: 96.v,
                              width: 259.h,
                              padding: EdgeInsets.symmetric(
                                horizontal: 11.h,
                                vertical: 5.v,
                              ),
                              decoration: AppDecoration.fillBlueGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgGroup46,
                                height: 85.v,
                                width: 236.h,
                                alignment: Alignment.center,
                              ),
                            ),
                            SizedBox(height: 10.v),
                            Text(
                              "lbl_type".tr,
                              style: CustomTextStyles.bodySmallBlack900,
                            ),
                            SizedBox(height: 108.v),
                            Text(
                              "lbl_prizes2".tr,
                              style: CustomTextStyles.bodySmallBlack900,
                            ),
                            SizedBox(height: 4.v),
                            _buildEnterprizes(context),
                            SizedBox(height: 10.v),
                            Text(
                              "lbl_description".tr,
                              style: CustomTextStyles.bodySmallBlack900,
                            ),
                            SizedBox(height: 3.v),
                            _buildTwentyNine(context),
                            SizedBox(height: 10.v),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 37.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "lbl_win_points".tr,
                                          style: CustomTextStyles
                                              .bodySmallBlack900,
                                        ),
                                        SizedBox(height: 3.v),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgUser,
                                          height: 25.v,
                                          width: 33.h,
                                          margin: EdgeInsets.only(left: 2.h),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 30.h),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl_draw_points".tr,
                                            style: CustomTextStyles
                                                .bodySmallBlack900,
                                          ),
                                          SizedBox(height: 3.v),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgUser,
                                            height: 25.v,
                                            width: 33.h,
                                            margin: EdgeInsets.only(left: 4.h),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 30.h),
                                      child: Column(
                                        children: [
                                          Text(
                                            "lbl_lose_points".tr,
                                            style: CustomTextStyles
                                                .bodySmallBlack900,
                                          ),
                                          SizedBox(height: 3.v),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgUser,
                                            height: 25.v,
                                            width: 33.h,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10.v),
                            _buildSixtyNine(context),
                            SizedBox(height: 10.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 9.h,
                                right: 25.h,
                              ),
                              child: Row(
                                children: [
                                  _buildCreate(context),
                                  _buildStage(context),
                                ],
                              ),
                            ),
                            SizedBox(height: 5.v),
                            _buildCancel(context),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildNine(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillTeal700,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector,
            height: 8.v,
            width: 4.h,
            margin: EdgeInsets.symmetric(vertical: 3.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Text(
              "lbl_back".tr,
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabMenu(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 69.h),
          decoration: AppDecoration.fillTeal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10.v),
                child: Column(
                  children: [
                    Text(
                      "lbl_competition".tr.toUpperCase(),
                      style: theme.textTheme.labelLarge,
                    ),
                    SizedBox(height: 9.v),
                    SizedBox(
                      width: 58.h,
                      child: Divider(
                        color: appTheme.whiteA700,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 10.v,
                  bottom: 9.v,
                ),
                child: Text(
                  "lbl_players".tr.toUpperCase(),
                  style: theme.textTheme.labelLarge,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 10.v,
                  right: 1.h,
                  bottom: 9.v,
                ),
                child: Text(
                  "lbl_teams".tr.toUpperCase(),
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 127.h,
          child: Divider(
            color: appTheme.whiteA700,
            indent: 69.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFifteen(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 17.v),
        child: Consumer<CreatecompetitiononeProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 10.v,
                );
              },
              itemCount:
                  provider.createcompetitiononeModelObj.fifteen4ItemList.length,
              itemBuilder: (context, index) {
                Fifteen4ItemModel model = provider
                    .createcompetitiononeModelObj.fifteen4ItemList[index];
                return Fifteen4ItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: Selector<CreatecompetitiononeProvider, TextEditingController?>(
          selector: (
            context,
            provider,
          ) =>
              provider.nameController,
          builder: (context, nameController, child) {
            return CustomTextFormField(
              controller: nameController,
              hintText: "lbl_enter_name".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEnterprizes(BuildContext context) {
    return Selector<CreatecompetitiononeProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.enterprizesController,
      builder: (context, enterprizesController, child) {
        return CustomTextFormField(
          controller: enterprizesController,
          hintText: "lbl_enter_prizes".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildTwentyNine(BuildContext context) {
    return Selector<CreatecompetitiononeProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.twentyNineController,
      builder: (context, twentyNineController, child) {
        return CustomTextFormField(
          controller: twentyNineController,
          hintText: "msg_enter_description".tr,
          textInputAction: TextInputAction.done,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSixtyNine(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Consumer<CreatecompetitiononeProvider>(
        builder: (context, provider, child) {
          return Wrap(
            runSpacing: 11.v,
            spacing: 11.h,
            children: List<Widget>.generate(
              provider.createcompetitiononeModelObj.sixtynineItemList.length,
              (index) {
                SixtynineItemModel model = provider
                    .createcompetitiononeModelObj.sixtynineItemList[index];

                return SixtynineItemWidget(
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
    );
  }

  /// Section Widget
  Widget _buildCreate(BuildContext context) {
    return CustomElevatedButton(
      width: 100.h,
      text: "lbl_create".tr,
    );
  }

  /// Section Widget
  Widget _buildStage(BuildContext context) {
    return Opacity(
      opacity: 0.5,
      child: CustomElevatedButton(
        width: 100.h,
        text: "lbl_stage".tr,
        margin: EdgeInsets.only(left: 25.h),
        buttonStyle: CustomButtonStyles.fillTealTL2,
      ),
    );
  }

  /// Section Widget
  Widget _buildCancel(BuildContext context) {
    return CustomElevatedButton(
      width: 100.h,
      text: "lbl_cancel".tr,
      margin: EdgeInsets.only(left: 72.h),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
