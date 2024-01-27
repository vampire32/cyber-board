import 'models/guide_model.dart';import 'package:flutter/material.dart';import 'package:invovision_s_application1/core/app_export.dart';import 'package:invovision_s_application1/widgets/app_bar/appbar_leading_image.dart';import 'package:invovision_s_application1/widgets/app_bar/appbar_title.dart';import 'package:invovision_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:invovision_s_application1/widgets/custom_bottom_bar.dart';import 'provider/guide_provider.dart';class GuideScreen extends StatefulWidget {const GuideScreen({Key? key}) : super(key: key);

@override GuideScreenState createState() =>  GuideScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => GuideProvider(), child: GuideScreen()); } 
 }

// ignore_for_file: must_be_immutable
class GuideScreenState extends State<GuideScreen> {GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, appBar: _buildAppBar(context), body: Container(width: SizeUtils.width, height: SizeUtils.height, decoration: BoxDecoration(color: appTheme.whiteA700, image: DecorationImage(image: AssetImage(ImageConstant.imgGroup629), fit: BoxFit.cover)), child: SizedBox(width: double.maxFinite, child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 81.v), Container(width: 328.h, margin: EdgeInsets.only(left: 15.h, right: 16.h), child: Text("msg_this_app_will_help".tr, maxLines: 23, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumBlack900))]))), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 24.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgVector, margin: EdgeInsets.only(left: 20.h, top: 16.v, bottom: 16.v)), title: AppbarTitle(text: "lbl_back".tr, margin: EdgeInsets.only(left: 5.h), onTap: () {onBackPressed(context);}), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {}); } 

/// Navigates to the previous screen.
onBackPressed(BuildContext context) { NavigatorService.goBack(); } 
 }
