import '../profileteam_dialog/widgets/profileteam_item_widget.dart';
import 'models/profileteam_item_model.dart';
import 'models/profileteam_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/widgets/custom_elevated_button.dart';
import 'provider/profileteam_provider.dart';

// ignore_for_file: must_be_immutable
class ProfileteamDialog extends StatefulWidget {
  const ProfileteamDialog({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileteamDialogState createState() => ProfileteamDialogState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileteamProvider(),
      child: ProfileteamDialog(),
    );
  }
}

class ProfileteamDialogState extends State<ProfileteamDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 263.h,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Text(
                "lbl_select_player".tr,
                style: CustomTextStyles.bodySmallBlack900,
              ),
            ),
          ),
          SizedBox(height: 8.v),
          _buildProfileTeam(context),
          SizedBox(height: 27.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildSave(context),
              _buildCancel(context),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileTeam(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23.h),
      child: Consumer<ProfileteamProvider>(
        builder: (context, provider, child) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 43.v,
              crossAxisCount: 2,
              mainAxisSpacing: 6.h,
              crossAxisSpacing: 6.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: provider.profileteamModelObj.profileteamItemList.length,
            itemBuilder: (context, index) {
              ProfileteamItemModel model =
                  provider.profileteamModelObj.profileteamItemList[index];
              return ProfileteamItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        text: "lbl_save".tr,
        margin: EdgeInsets.only(right: 12.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildCancel(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        text: "lbl_cancel".tr,
        margin: EdgeInsets.only(left: 12.h),
      ),
    );
  }
}
