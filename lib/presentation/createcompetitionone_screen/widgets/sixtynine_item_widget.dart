import '../models/sixtynine_item_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class SixtynineItemWidget extends StatelessWidget {
  SixtynineItemWidget(
    this.sixtynineItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  SixtynineItemModel sixtynineItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          sixtynineItemModelObj.limited!,
          style: TextStyle(
            color: appTheme.black900,
            fontSize: 12.fSize,
            fontFamily: 'DIN Pro',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: (sixtynineItemModelObj.isSelected ?? false),
        backgroundColor: Colors.transparent,
        selectedColor: Colors.transparent,
        onSelected: (value) {
          onSelectedChipView1?.call(value);
        },
      ),
    );
  }
}
