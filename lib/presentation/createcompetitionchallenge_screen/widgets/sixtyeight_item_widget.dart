import '../models/sixtyeight_item_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class SixtyeightItemWidget extends StatelessWidget {
  SixtyeightItemWidget(
    this.sixtyeightItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  SixtyeightItemModel sixtyeightItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 5.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        sixtyeightItemModelObj.limited!,
        style: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 12.fSize,
          fontFamily: 'DIN Pro',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: (sixtyeightItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.teal700,
      selectedColor: appTheme.teal700,
      shape: (sixtyeightItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.teal700.withOpacity(0.6),
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
