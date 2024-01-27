import '../models/sixtyeight2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Sixtyeight2ItemWidget extends StatelessWidget {
  Sixtyeight2ItemWidget(
    this.sixtyeight2ItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  Sixtyeight2ItemModel sixtyeight2ItemModelObj;

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
        sixtyeight2ItemModelObj.limited!,
        style: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 12.fSize,
          fontFamily: 'DIN Pro',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: (sixtyeight2ItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.teal700,
      selectedColor: appTheme.teal700,
      shape: (sixtyeight2ItemModelObj.isSelected ?? false)
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
