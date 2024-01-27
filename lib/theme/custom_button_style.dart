import 'dart:ui';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillTealTL10 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.teal500.withOpacity(0.6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get fillTealTL101 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.teal500.withOpacity(0.9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get fillTealTL2 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.teal700.withOpacity(0.53),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.h),
        ),
      );

  // Outline button style
  static ButtonStyle get outlineBlackTL3 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.teal700,
        side: BorderSide(
          color: appTheme.black900.withOpacity(0.2),
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
