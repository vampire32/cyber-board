import '../models/win_item_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class WinItemWidget extends StatelessWidget {
  WinItemWidget(
    this.winItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  WinItemModel winItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 5.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        winItemModelObj.win!,
        style: TextStyle(
          color: (winItemModelObj.isSelected ?? false)
              ? appTheme.whiteA700
              : appTheme.black900,
          fontSize: 12.fSize,
          fontFamily: 'DIN Pro',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: (winItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.blueGray100.withOpacity(0.5),
      selectedColor: appTheme.teal700,
      shape: (winItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.black900.withOpacity(0.2),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                3.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.black900.withOpacity(0.2),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                3.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView1?.call(value);
      },
    );
  }
}
