import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'provider/app_navigation_provider.dart';

class AppNavigationScreen extends StatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppNavigationProvider(),
      child: AppNavigationScreen(),
    );
  }
}

class AppNavigationScreenState extends State<AppNavigationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Loading".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loadingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Menu".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.menuScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Guide".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.guideScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Create playerTab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createPlayertabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "CreateTeamPlayer".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createteamplayerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "CreatecompetitionChallenge".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createcompetitionchallengeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "CreatecompetitionLeague".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createcompetitionleagueScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "CreatecompetitionPlayOFF".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createcompetitionplayoffScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Createcompetitionchalleng - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .createcompetitionchallengTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "CreatecompetitionOne".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createcompetitiononeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ProfilePlayer".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileplayerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ProfileTeamOne".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileteamoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "CompetitionChallenge".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.competitionchallengeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "CompetitionChallengeOne".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.competitionchallengeoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "CompetitionTablePlayOff - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .competitiontableplayoffTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Competition".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.competitionScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "End".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.endScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Prizes".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.prizesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "RandomOrder - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.randomorderTabContainerScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
