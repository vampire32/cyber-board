import 'models/competition_table_league_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/widgets/custom_elevated_button.dart';
import 'provider/competition_table_league_provider.dart';

// ignore_for_file: must_be_immutable
class CompetitionTableLeaguePage extends StatefulWidget {
  const CompetitionTableLeaguePage({Key? key})
      : super(
          key: key,
        );

  @override
  CompetitionTableLeaguePageState createState() =>
      CompetitionTableLeaguePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompetitionTableLeagueProvider(),
      child: CompetitionTableLeaguePage(),
    );
  }
}

class CompetitionTableLeaguePageState extends State<CompetitionTableLeaguePage>
    with AutomaticKeepAliveClientMixin<CompetitionTableLeaguePage> {
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
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 8.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.h),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "lbl_group_a".tr,
                          style: CustomTextStyles.bodySmallBlack900,
                        ),
                      ),
                      SizedBox(height: 3.v),
                      Divider(),
                      SizedBox(height: 9.v),
                      _buildContrast(
                        context,
                        nameTeam: "lbl_name_team".tr,
                        vS: "lbl_vs".tr,
                        nameTeam1: "lbl_name_team".tr,
                      ),
                      SizedBox(height: 10.v),
                      _buildContrast(
                        context,
                        nameTeam: "lbl_name_team".tr,
                        vS: "lbl_vs".tr,
                        nameTeam1: "lbl_name_team".tr,
                      ),
                      SizedBox(height: 10.v),
                      _buildContrast(
                        context,
                        nameTeam: "lbl_name_team".tr,
                        vS: "lbl_vs".tr,
                        nameTeam1: "lbl_name_team".tr,
                      ),
                      SizedBox(height: 10.v),
                      _buildContrast(
                        context,
                        nameTeam: "lbl_name_team".tr,
                        vS: "lbl_vs".tr,
                        nameTeam1: "lbl_name_team".tr,
                      ),
                      SizedBox(height: 13.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "lbl_group_b".tr,
                          style: CustomTextStyles.bodySmallBlack900,
                        ),
                      ),
                      SizedBox(height: 3.v),
                      Divider(),
                      SizedBox(height: 9.v),
                      _buildContrast(
                        context,
                        nameTeam: "lbl_name_team".tr,
                        vS: "lbl_vs".tr,
                        nameTeam1: "lbl_name_team".tr,
                      ),
                      SizedBox(height: 10.v),
                      _buildContrast(
                        context,
                        nameTeam: "lbl_name_team".tr,
                        vS: "lbl_vs".tr,
                        nameTeam1: "lbl_name_team".tr,
                      ),
                      SizedBox(height: 10.v),
                      _buildContrast(
                        context,
                        nameTeam: "lbl_name_team".tr,
                        vS: "lbl_vs".tr,
                        nameTeam1: "lbl_name_team".tr,
                      ),
                      SizedBox(height: 10.v),
                      _buildContrast(
                        context,
                        nameTeam: "lbl_name_team".tr,
                        vS: "lbl_vs".tr,
                        nameTeam1: "lbl_name_team".tr,
                      ),
                      SizedBox(height: 31.v),
                      CustomElevatedButton(
                        width: 100.h,
                        text: "lbl_start".tr,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildContrast(
    BuildContext context, {
    required String nameTeam,
    required String vS,
    required String nameTeam1,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 9.h,
            vertical: 6.v,
          ),
          decoration: AppDecoration.fillTeal500.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgContrast,
                height: 30.v,
                width: 26.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 5.h,
                  top: 6.v,
                  bottom: 5.v,
                ),
                child: Text(
                  nameTeam,
                  style: CustomTextStyles.titleSmallBold.copyWith(
                    color: appTheme.whiteA700,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 6.v,
            bottom: 4.v,
          ),
          child: Text(
            vS,
            style: theme.textTheme.headlineSmall!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 9.h,
            vertical: 6.v,
          ),
          decoration: AppDecoration.fillTeal500.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgContrast,
                height: 30.v,
                width: 26.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 5.h,
                  top: 6.v,
                  bottom: 5.v,
                ),
                child: Text(
                  nameTeam1,
                  style: CustomTextStyles.titleSmallBold.copyWith(
                    color: appTheme.whiteA700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
