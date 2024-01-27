import '../createcompetitionchalleng_page/widgets/sixtyeight2_item_widget.dart';
import 'models/createcompetitionchalleng_model.dart';
import 'models/sixtyeight2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/core/utils/validation_functions.dart';
import 'package:invovision_s_application1/widgets/custom_elevated_button.dart';
import 'package:invovision_s_application1/widgets/custom_text_form_field.dart';
import 'provider/createcompetitionchalleng_provider.dart';

// ignore_for_file: must_be_immutable
class CreatecompetitionchallengPage extends StatefulWidget {
  const CreatecompetitionchallengPage({Key? key})
      : super(
          key: key,
        );

  @override
  CreatecompetitionchallengPageState createState() =>
      CreatecompetitionchallengPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CreatecompetitionchallengProvider(),
      child: CreatecompetitionchallengPage(),
    );
  }
}

class CreatecompetitionchallengPageState
    extends State<CreatecompetitionchallengPage>
    with AutomaticKeepAliveClientMixin<CreatecompetitionchallengPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: _buildScrollView(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                children: [
                  SizedBox(
                    height: 20.v,
                    width: 259.h,
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Selector<CreatecompetitionchallengProvider,
                            TextEditingController?>(
                          selector: (
                            context,
                            provider,
                          ) =>
                              provider.stageController,
                          builder: (context, stageController, child) {
                            return CustomTextFormField(
                              width: 259.h,
                              controller: stageController,
                              hintText: "lbl_stage_2".tr,
                              hintStyle: CustomTextStyles.bodySmallBlack900,
                              alignment: Alignment.center,
                              borderDecoration:
                                  TextFormFieldStyleHelper.underLineBlack,
                              filled: false,
                            );
                          },
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgClose,
                          height: 14.v,
                          width: 20.h,
                          alignment: Alignment.topRight,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "lbl_name".tr,
                      style: CustomTextStyles.bodySmallBlack900,
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Selector<CreatecompetitionchallengProvider,
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
                  SizedBox(height: 10.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "lbl_type".tr,
                      style: CustomTextStyles.bodySmallBlack900,
                    ),
                  ),
                  SizedBox(height: 110.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 37.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_win_points".tr,
                              style: CustomTextStyles.bodySmallBlack900,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_draw_points".tr,
                                style: CustomTextStyles.bodySmallBlack900,
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
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Consumer<CreatecompetitionchallengProvider>(
                    builder: (context, provider, child) {
                      return Wrap(
                        runSpacing: 7.v,
                        spacing: 7.h,
                        children: List<Widget>.generate(
                          provider.createcompetitionchallengModelObj
                              .sixtyeight2ItemList.length,
                          (index) {
                            Sixtyeight2ItemModel model = provider
                                .createcompetitionchallengModelObj
                                .sixtyeight2ItemList[index];

                            return Sixtyeight2ItemWidget(
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
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17.h),
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
                            text: "lbl_stage".tr,
                            margin: EdgeInsets.only(left: 12.h),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.v),
                  CustomElevatedButton(
                    width: 100.h,
                    text: "lbl_cancel".tr,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
