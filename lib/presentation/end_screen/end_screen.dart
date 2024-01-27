import 'models/end_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/widgets/custom_elevated_button.dart';
import 'provider/end_provider.dart';

class EndScreen extends StatefulWidget {
  const EndScreen({Key? key})
      : super(
          key: key,
        );

  @override
  EndScreenState createState() => EndScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EndProvider(),
      child: EndScreen(),
    );
  }
}

class EndScreenState extends State<EndScreen> {
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
                ImageConstant.imgGroup629,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 56.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 3.v),
                Text(
                  "msg_congratulations".tr,
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 1.v),
                CustomImageView(
                  imagePath: ImageConstant.img16124,
                  height: 71.v,
                  width: 89.h,
                ),
                SizedBox(height: 5.v),
                Text(
                  "lbl_name_tournament".tr,
                  style: CustomTextStyles.labelLargeBlack900,
                ),
                SizedBox(height: 14.v),
                CustomElevatedButton(
                  height: 42.v,
                  width: 130.h,
                  text: "lbl_name_team".tr,
                  leftIcon: Container(
                    margin: EdgeInsets.only(right: 4.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgContrast,
                      height: 30.v,
                      width: 26.h,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.fillTealTL10,
                  buttonTextStyle: CustomTextStyles.titleSmallBold,
                ),
                SizedBox(height: 14.v),
                Text(
                  "lbl_prizes_335_00".tr,
                  style: CustomTextStyles.bodySmallBlack900,
                ),
                SizedBox(height: 14.v),
                CustomElevatedButton(
                  width: 100.h,
                  text: "lbl_end".tr,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
