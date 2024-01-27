import '../processcontainer_page/widgets/fifteen_item_widget.dart';
import 'models/fifteen_item_model.dart';
import 'models/processcontainer_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:invovision_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:invovision_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'provider/processcontainer_provider.dart';

// ignore_for_file: must_be_immutable
class ProcesscontainerPage extends StatefulWidget {
  const ProcesscontainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProcesscontainerPageState createState() => ProcesscontainerPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProcesscontainerProvider(),
      child: ProcesscontainerPage(),
    );
  }
}

class ProcesscontainerPageState extends State<ProcesscontainerPage> {
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
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup783,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 20.v),
            child: Consumer<ProcesscontainerProvider>(
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
                      provider.processcontainerModelObj.fifteenItemList.length,
                  itemBuilder: (context, index) {
                    FifteenItemModel model = provider
                        .processcontainerModelObj.fifteenItemList[index];
                    return FifteenItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
        ),
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
}
