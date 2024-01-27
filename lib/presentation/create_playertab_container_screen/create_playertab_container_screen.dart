import 'models/create_playertab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/create_page/create_page.dart';
import 'package:invovision_s_application1/presentation/create_player_page/create_player_page.dart';
import 'package:invovision_s_application1/presentation/create_team_page/create_team_page.dart';
import 'package:invovision_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:invovision_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:invovision_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:invovision_s_application1/widgets/custom_bottom_bar.dart';
import 'package:invovision_s_application1/widgets/custom_floating_button.dart';
import 'provider/create_playertab_container_provider.dart';

class CreatePlayertabContainerScreen extends StatefulWidget {
  const CreatePlayertabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CreatePlayertabContainerScreenState createState() =>
      CreatePlayertabContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CreatePlayertabContainerProvider(),
      child: CreatePlayertabContainerScreen(),
    );
  }
}

class CreatePlayertabContainerScreenState
    extends State<CreatePlayertabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
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
                ImageConstant.imgGroup629,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                _buildTabview(context),
                SizedBox(
                  height: 505.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      CreatePage.builder(context),
                      CreatePlayerPage.builder(context),
                      CreateTeamPage.builder(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
        floatingActionButton: _buildFloatingActionButton(context),
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
              "lbl_competition".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_players".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_teams".tr,
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

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
      height: 40,
      width: 40,
      child: Icon(
        Icons.add,
      ),
    );
  }
}
