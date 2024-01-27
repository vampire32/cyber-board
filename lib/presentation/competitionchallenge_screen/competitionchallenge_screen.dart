import '../competitionchallenge_screen/widgets/userprofile3_item_widget.dart';
import 'models/competitionchallenge_model.dart';
import 'models/userprofile3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:invovision_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:invovision_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:invovision_s_application1/widgets/custom_bottom_bar.dart';
import 'package:invovision_s_application1/widgets/custom_elevated_button.dart';
import 'package:invovision_s_application1/widgets/custom_text_form_field.dart';
import 'provider/competitionchallenge_provider.dart';

class CompetitionchallengeScreen extends StatefulWidget {
  const CompetitionchallengeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CompetitionchallengeScreenState createState() =>
      CompetitionchallengeScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompetitionchallengeProvider(),
      child: CompetitionchallengeScreen(),
    );
  }
}

class CompetitionchallengeScreenState
    extends State<CompetitionchallengeScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup629,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Spacer(
                  flex: 52,
                ),
                _buildChallenge1(context),
                Spacer(
                  flex: 47,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 24.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVector,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 16.v,
          bottom: 16.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_back".tr,
        margin: EdgeInsets.only(left: 5.h),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildChallenge(BuildContext context) {
    return Selector<CompetitionchallengeProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.challengeController,
      builder: (context, challengeController, child) {
        return CustomTextFormField(
          controller: challengeController,
          hintText: "lbl_challenge".tr,
          hintStyle: CustomTextStyles.bodySmallBlack900,
          borderDecoration: TextFormFieldStyleHelper.underLineBlack,
          filled: false,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Selector<CompetitionchallengeProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.nameController,
      builder: (context, nameController, child) {
        return CustomTextFormField(
          controller: nameController,
          hintText: "lbl_discipline_1".tr,
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

  /// Section Widget
  Widget _buildChallenge1(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 34.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildChallenge(context),
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
          SizedBox(height: 10.v),
          SizedBox(
            height: 43.v,
            child: Consumer<CompetitionchallengeProvider>(
              builder: (context, provider, child) {
                return ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 29.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 14.h,
                    );
                  },
                  itemCount: provider
                      .competitionchallengeModelObj.userprofile3ItemList.length,
                  itemBuilder: (context, index) {
                    Userprofile3ItemModel model = provider
                        .competitionchallengeModelObj
                        .userprofile3ItemList[index];
                    return Userprofile3ItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
          SizedBox(height: 10.v),
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
