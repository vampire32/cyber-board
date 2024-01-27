import 'models/createcompetitionchalleng_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/core/utils/validation_functions.dart';
import 'package:invovision_s_application1/presentation/createcompetitionchalleng_page/createcompetitionchalleng_page.dart';
import 'package:invovision_s_application1/widgets/custom_text_form_field.dart';
import 'provider/createcompetitionchalleng_tab_container_provider.dart';

class CreatecompetitionchallengTabContainerScreen extends StatefulWidget {
  const CreatecompetitionchallengTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CreatecompetitionchallengTabContainerScreenState createState() =>
      CreatecompetitionchallengTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CreatecompetitionchallengTabContainerProvider(),
      child: CreatecompetitionchallengTabContainerScreen(),
    );
  }
}

class CreatecompetitionchallengTabContainerScreenState
    extends State<CreatecompetitionchallengTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.h,
                  vertical: 55.v,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 24.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.img16124,
                            height: 25.v,
                            width: 31.h,
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 13.h),
                              child: Selector<
                                  CreatecompetitionchallengTabContainerProvider,
                                  TextEditingController?>(
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
                                        return "err_msg_please_enter_valid_text"
                                            .tr;
                                      }
                                      return null;
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
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
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 21.h),
                        child: Text(
                          "lbl_type".tr,
                          style: CustomTextStyles.bodySmallBlack900,
                        ),
                      ),
                    ),
                    SizedBox(height: 108.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 21.h),
                        child: Text(
                          "lbl_prizes2".tr,
                          style: CustomTextStyles.bodySmallBlack900,
                        ),
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 21.h,
                        right: 20.h,
                      ),
                      child: Selector<
                          CreatecompetitionchallengTabContainerProvider,
                          TextEditingController?>(
                        selector: (
                          context,
                          provider,
                        ) =>
                            provider.prizesvalueController,
                        builder: (context, prizesvalueController, child) {
                          return CustomTextFormField(
                            controller: prizesvalueController,
                            hintText: "lbl_enter_prizes".tr,
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 21.h),
                        child: Text(
                          "lbl_description".tr,
                          style: CustomTextStyles.bodySmallBlack900,
                        ),
                      ),
                    ),
                    SizedBox(height: 3.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 21.h,
                        right: 20.h,
                      ),
                      child: Selector<
                          CreatecompetitionchallengTabContainerProvider,
                          TextEditingController?>(
                        selector: (
                          context,
                          provider,
                        ) =>
                            provider.descriptionvalueController,
                        builder: (context, descriptionvalueController, child) {
                          return CustomTextFormField(
                            controller: descriptionvalueController,
                            hintText: "msg_enter_description".tr,
                            textInputAction: TextInputAction.done,
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgVectorTeal700,
                          height: 2.v,
                          width: 10.h,
                          margin: EdgeInsets.only(
                            top: 30.v,
                            bottom: 10.v,
                          ),
                        ),
                        SizedBox(
                          height: 43.v,
                          width: 47.h,
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 8.h),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_win_points".tr,
                                        style:
                                            CustomTextStyles.bodySmallBlack900,
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
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgPlus,
                                height: 10.adaptSize,
                                width: 10.adaptSize,
                                alignment: Alignment.bottomRight,
                                margin: EdgeInsets.only(bottom: 6.v),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 43.v,
                          width: 57.h,
                          margin: EdgeInsets.only(left: 14.h),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 7.h),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_draw_points".tr,
                                        style:
                                            CustomTextStyles.bodySmallBlack900,
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
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgPlus,
                                height: 10.adaptSize,
                                width: 10.adaptSize,
                                alignment: Alignment.bottomRight,
                                margin: EdgeInsets.only(bottom: 6.v),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorTeal700,
                                height: 2.v,
                                width: 10.h,
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(bottom: 10.v),
                              ),
                            ],
                          ),
                        ),
                        _buildVector(context),
                      ],
                    ),
                    SizedBox(height: 10.v),
                    Container(
                      height: 25.v,
                      width: 100.h,
                      decoration: BoxDecoration(
                        color: appTheme.blueGray100.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(
                          3.h,
                        ),
                        border: Border.all(
                          color: appTheme.black900.withOpacity(0.2),
                          width: 1.h,
                        ),
                      ),
                      child: TabBar(
                        controller: tabviewController,
                        labelPadding: EdgeInsets.zero,
                        labelColor: appTheme.whiteA700,
                        labelStyle: TextStyle(
                          fontSize: 12.fSize,
                          fontFamily: 'DIN Pro',
                          fontWeight: FontWeight.w400,
                        ),
                        unselectedLabelColor: appTheme.black900,
                        unselectedLabelStyle: TextStyle(
                          fontSize: 12.fSize,
                          fontFamily: 'DIN Pro',
                          fontWeight: FontWeight.w400,
                        ),
                        indicator: BoxDecoration(
                          color: appTheme.teal700,
                          borderRadius: BorderRadius.circular(
                            3.h,
                          ),
                          border: Border.all(
                            color: appTheme.black900.withOpacity(0.2),
                            width: 1.h,
                          ),
                        ),
                        tabs: [
                          Tab(
                            child: Text(
                              "lbl_limited".tr,
                            ),
                          ),
                          Tab(
                            child: Text(
                              "lbl_unlimited".tr,
                            ),
                          ),
                        ],
                      ),
                    ),
                    _buildTabBarView(context),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildVector(BuildContext context) {
    return Container(
      width: 57.h,
      margin: EdgeInsets.only(left: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVectorTeal700,
            height: 2.v,
            width: 10.h,
            margin: EdgeInsets.only(
              top: 30.v,
              bottom: 10.v,
            ),
          ),
          Column(
            children: [
              Text(
                "lbl_lose_points".tr,
                style: CustomTextStyles.bodySmallBlack900,
              ),
              SizedBox(height: 3.v),
              CustomImageView(
                imagePath: ImageConstant.imgUser,
                height: 25.v,
                width: 33.h,
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgPlus,
            height: 10.adaptSize,
            width: 10.adaptSize,
            margin: EdgeInsets.only(
              top: 26.v,
              bottom: 6.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      height: 440.v,
      child: TabBarView(
        controller: tabviewController,
        children: [
          CreatecompetitionchallengPage.builder(context),
          CreatecompetitionchallengPage.builder(context),
        ],
      ),
    );
  }
}
