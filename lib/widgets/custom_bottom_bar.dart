import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavProcess,
      activeIcon: ImageConstant.imgNavProcess,
      title: "lbl_process".tr,
      type: BottomBarEnum.Process,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavCreate,
      activeIcon: ImageConstant.imgNavCreate,
      title: "lbl_create".tr,
      type: BottomBarEnum.Create,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavRandom,
      activeIcon: ImageConstant.imgNavRandom,
      title: "lbl_random".tr,
      type: BottomBarEnum.Random,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavPrizes,
      activeIcon: ImageConstant.imgNavPrizes,
      title: "lbl_prizes".tr,
      type: BottomBarEnum.Prizes,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavGuide,
      activeIcon: ImageConstant.imgNavGuide,
      title: "lbl_guide".tr,
      type: BottomBarEnum.Guide,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58.v,
      decoration: BoxDecoration(
        color: appTheme.teal700,
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].icon,
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                  color: appTheme.whiteA700,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: appTheme.whiteA700,
                    ),
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].activeIcon,
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                  color: appTheme.whiteA700,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: appTheme.whiteA700,
                    ),
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Process,
  Create,
  Random,
  Prizes,
  Guide,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
