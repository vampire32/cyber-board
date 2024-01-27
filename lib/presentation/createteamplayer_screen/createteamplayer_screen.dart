import '../createteamplayer_screen/widgets/userprofile2_item_widget.dart';
import 'models/createteamplayer_model.dart';
import 'models/userprofile2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/core/utils/validation_functions.dart';
import 'package:invovision_s_application1/widgets/custom_bottom_bar.dart';
import 'package:invovision_s_application1/widgets/custom_elevated_button.dart';
import 'package:invovision_s_application1/widgets/custom_icon_button.dart';
import 'package:invovision_s_application1/widgets/custom_text_form_field.dart';
import 'provider/createteamplayer_provider.dart';

class CreateteamplayerScreen extends StatefulWidget {
  const CreateteamplayerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CreateteamplayerScreenState createState() => CreateteamplayerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CreateteamplayerProvider(),
      child: CreateteamplayerScreen(),
    );
  }
}

class CreateteamplayerScreenState extends State<CreateteamplayerScreen> {
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
                          _buildUserProfile(context),
                          SizedBox(height: 10.v),
                          _buildNameSurrname(context),
                          SizedBox(height: 65.v),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.h,
                        vertical: 220.v,
                      ),
                      decoration: AppDecoration.fillWhiteA700,
                      child: _buildName(context),
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
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 70.h),
          decoration: AppDecoration.fillTeal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 10.v,
                  bottom: 9.v,
                ),
                child: Text(
                  "lbl_competition".tr.toUpperCase(),
                  style: theme.textTheme.labelLarge,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.v),
                child: Column(
                  children: [
                    Text(
                      "lbl_players".tr.toUpperCase(),
                      style: theme.textTheme.labelLarge,
                    ),
                    SizedBox(height: 9.v),
                    SizedBox(
                      width: 40.h,
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
                  "lbl_teams".tr.toUpperCase(),
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            width: 186.h,
            child: Divider(
              color: appTheme.whiteA700,
              endIndent: 146.h,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Consumer<CreateteamplayerProvider>(
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
              provider.createteamplayerModelObj.userprofile2ItemList.length,
          itemBuilder: (context, index) {
            Userprofile2ItemModel model =
                provider.createteamplayerModelObj.userprofile2ItemList[index];
            return Userprofile2ItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildNameSurrname(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.fillTeal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 7.v,
              bottom: 2.v,
            ),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup256,
                  height: 51.adaptSize,
                  width: 51.adaptSize,
                ),
                SizedBox(height: 5.v),
                Text(
                  "lbl_name_surrname".tr,
                  style: CustomTextStyles.titleSmallBold,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 90.h,
              top: 7.v,
            ),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgThumbsUp,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  alignment: Alignment.centerRight,
                ),
                SizedBox(height: 17.v),
                CustomImageView(
                  imagePath: ImageConstant.imgFacebook,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 5.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup256,
                height: 25.adaptSize,
                width: 25.adaptSize,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Selector<CreateteamplayerProvider,
                      TextEditingController?>(
                    selector: (
                      context,
                      provider,
                    ) =>
                        provider.nameController,
                    builder: (context, nameController, child) {
                      return CustomTextFormField(
                        controller: nameController,
                        hintText: "msg_enter_name_and_surrname".tr,
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
              ),
              CustomImageView(
                imagePath: ImageConstant.imgClose,
                height: 14.v,
                width: 20.h,
                margin: EdgeInsets.only(
                  left: 7.h,
                  top: 6.v,
                  bottom: 5.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup256,
                height: 25.adaptSize,
                width: 25.adaptSize,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Selector<CreateteamplayerProvider,
                      TextEditingController?>(
                    selector: (
                      context,
                      provider,
                    ) =>
                        provider.nameController1,
                    builder: (context, nameController1, child) {
                      return CustomTextFormField(
                        controller: nameController1,
                        hintText: "msg_enter_name_and_surrname".tr,
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
              ),
              CustomImageView(
                imagePath: ImageConstant.imgClose,
                height: 14.v,
                width: 20.h,
                margin: EdgeInsets.only(
                  left: 7.h,
                  top: 6.v,
                  bottom: 5.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup256,
                height: 25.adaptSize,
                width: 25.adaptSize,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Selector<CreateteamplayerProvider,
                      TextEditingController?>(
                    selector: (
                      context,
                      provider,
                    ) =>
                        provider.nameController2,
                    builder: (context, nameController2, child) {
                      return CustomTextFormField(
                        controller: nameController2,
                        hintText: "msg_enter_name_and_surrname".tr,
                        textInputAction: TextInputAction.done,
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
              ),
              CustomImageView(
                imagePath: ImageConstant.imgClose,
                height: 14.v,
                width: 20.h,
                margin: EdgeInsets.only(
                  left: 7.h,
                  top: 6.v,
                  bottom: 5.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.v),
          CustomIconButton(
            height: 25.adaptSize,
            width: 25.adaptSize,
            child: CustomImageView(),
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CustomElevatedButton(
                    text: "lbl_create".tr,
                    margin: EdgeInsets.only(right: 12.h),
                  ),
                ),
                Expanded(
                  child: CustomElevatedButton(
                    text: "lbl_cancel".tr,
                    margin: EdgeInsets.only(left: 12.h),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
