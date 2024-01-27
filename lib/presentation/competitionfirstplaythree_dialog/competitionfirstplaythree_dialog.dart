import 'models/competitionfirstplaythree_model.dart';import 'package:flutter/material.dart';import 'package:invovision_s_application1/core/app_export.dart';import 'package:invovision_s_application1/widgets/custom_elevated_button.dart';import 'provider/competitionfirstplaythree_provider.dart';class CompetitionfirstplaythreeDialog extends StatefulWidget {const CompetitionfirstplaythreeDialog({Key? key}) : super(key: key);

@override CompetitionfirstplaythreeDialogState createState() =>  CompetitionfirstplaythreeDialogState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => CompetitionfirstplaythreeProvider(), child: CompetitionfirstplaythreeDialog()); } 
 }
class CompetitionfirstplaythreeDialogState extends State<CompetitionfirstplaythreeDialog> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return Container(width: 263.h, padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 11.v), decoration: AppDecoration.fillWhiteA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Column(mainAxisSize: MainAxisSize.min, children: [Text("lbl_who".tr, style: CustomTextStyles.bodySmallBlack900), SizedBox(height: 4.v), CustomImageView(imagePath: ImageConstant.imgUploadTeal500, height: 32.v, width: 69.h), SizedBox(height: 19.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildNameSurrname(context), CustomImageView(imagePath: ImageConstant.imgClose, height: 12.v, width: 16.h, margin: EdgeInsets.only(left: 10.h, top: 15.v, bottom: 15.v), onTap: () {onTapImgClose(context);})]), SizedBox(height: 10.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildNameSurrname1(context), CustomImageView(imagePath: ImageConstant.imgClose, height: 12.v, width: 16.h, margin: EdgeInsets.only(left: 10.h, top: 15.v, bottom: 15.v))]), SizedBox(height: 10.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildNameSurrname2(context), CustomImageView(imagePath: ImageConstant.imgClose, height: 12.v, width: 16.h, margin: EdgeInsets.only(left: 10.h, top: 15.v, bottom: 15.v))]), SizedBox(height: 10.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildNameSurrname3(context), CustomImageView(imagePath: ImageConstant.imgClose, height: 12.v, width: 16.h, margin: EdgeInsets.only(left: 10.h, top: 15.v, bottom: 15.v))]), SizedBox(height: 31.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildNext(context), _buildBack(context)])])); } 
/// Section Widget
Widget _buildNameSurrname(BuildContext context) { return CustomElevatedButton(height: 42.v, width: 130.h, text: "lbl_name_surrname".tr, leftIcon: Container(margin: EdgeInsets.only(right: 5.h), child: CustomImageView(imagePath: ImageConstant.imgGroup256, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.fillTealTL10, buttonTextStyle: CustomTextStyles.titleSmallBold); } 
/// Section Widget
Widget _buildNameSurrname1(BuildContext context) { return CustomElevatedButton(height: 42.v, width: 130.h, text: "lbl_name_surrname".tr, leftIcon: Container(margin: EdgeInsets.only(right: 5.h), child: CustomImageView(imagePath: ImageConstant.imgGroup256, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.fillTealTL10, buttonTextStyle: CustomTextStyles.titleSmallBold); } 
/// Section Widget
Widget _buildNameSurrname2(BuildContext context) { return CustomElevatedButton(height: 42.v, width: 130.h, text: "lbl_name_surrname".tr, leftIcon: Container(margin: EdgeInsets.only(right: 5.h), child: CustomImageView(imagePath: ImageConstant.imgGroup256, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.fillTealTL10, buttonTextStyle: CustomTextStyles.titleSmallBold); } 
/// Section Widget
Widget _buildNameSurrname3(BuildContext context) { return CustomElevatedButton(height: 42.v, width: 130.h, text: "lbl_name_surrname".tr, leftIcon: Container(margin: EdgeInsets.only(right: 5.h), child: CustomImageView(imagePath: ImageConstant.imgGroup256, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.fillTealTL10, buttonTextStyle: CustomTextStyles.titleSmallBold); } 
/// Section Widget
Widget _buildNext(BuildContext context) { return Expanded(child: CustomElevatedButton(text: "lbl_next".tr, margin: EdgeInsets.only(right: 12.h))); } 
/// Section Widget
Widget _buildBack(BuildContext context) { return Expanded(child: CustomElevatedButton(text: "lbl_back2".tr, margin: EdgeInsets.only(left: 12.h))); } 

/// Navigates to the previous screen.
onTapImgClose(BuildContext context) { NavigatorService.goBack(); } 
 }
