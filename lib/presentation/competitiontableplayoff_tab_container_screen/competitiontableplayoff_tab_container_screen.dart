import 'models/competitiontableplayoff_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/competition_stage_page/competition_stage_page.dart';
import 'package:invovision_s_application1/presentation/competitionleague_three_page/competitionleague_three_page.dart';
import 'package:invovision_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:invovision_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:invovision_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:invovision_s_application1/widgets/custom_bottom_bar.dart';
import 'provider/competitiontableplayoff_tab_container_provider.dart';

class CompetitiontableplayoffTabContainerScreen extends StatefulWidget {
  const CompetitiontableplayoffTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CompetitiontableplayoffTabContainerScreenState createState() =>
      CompetitiontableplayoffTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompetitiontableplayoffTabContainerProvider(),
      child: CompetitiontableplayoffTabContainerScreen(),
    );
  }
}

class CompetitiontableplayoffTabContainerScreenState
    extends State<CompetitiontableplayoffTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 678.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup629,
                height: 640.v,
                width: 360.h,
                alignment: Alignment.topCenter,
              ),
              SizedBox(
                width: double.maxFinite,
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildAppBar(context),
                      Expanded(
                        child: SizedBox(
                          width: double.maxFinite,
                          child: Column(
                            children: [
                              _buildTabview(context),
                              Expanded(
                                child: SizedBox(
                                  height: 543.v,
                                  child: TabBarView(
                                    controller: tabviewController,
                                    children: [
                                      CompetitionleagueThreePage.builder(
                                          context),
                                      CompetitionStagePage.builder(context),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
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
  Widget _buildTabview(BuildContext context) {
    return SizedBox(
      height: 37.v,
      width: double.maxFinite,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.whiteA700,
        labelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'DIN Pro',
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelColor: appTheme.whiteA700,
        unselectedLabelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'DIN Pro',
          fontWeight: FontWeight.w700,
        ),
        indicatorColor: appTheme.whiteA700,
        tabs: [
          Tab(
            child: Text(
              "lbl_table".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_stage2".tr,
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
