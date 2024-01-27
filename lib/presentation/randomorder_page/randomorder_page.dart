import '../randomorder_page/widgets/username_item_widget.dart';
import 'models/randomorder_model.dart';
import 'models/username_item_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'provider/randomorder_provider.dart';

// ignore_for_file: must_be_immutable
class RandomorderPage extends StatefulWidget {
  const RandomorderPage({Key? key})
      : super(
          key: key,
        );

  @override
  RandomorderPageState createState() => RandomorderPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RandomorderProvider(),
      child: RandomorderPage(),
    );
  }
}

class RandomorderPageState extends State<RandomorderPage>
    with AutomaticKeepAliveClientMixin<RandomorderPage> {
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
        extendBody: true,
        extendBodyBehindAppBar: true,
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
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillWhiteA.copyWith(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgGroup783,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 10.v),
                _buildUserName(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Consumer<RandomorderProvider>(
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
            itemCount: provider.randomorderModelObj.usernameItemList.length,
            itemBuilder: (context, index) {
              UsernameItemModel model =
                  provider.randomorderModelObj.usernameItemList[index];
              return UsernameItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
