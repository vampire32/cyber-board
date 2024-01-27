import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray100.withOpacity(0.4),
      );
  static BoxDecoration get fillRedA => BoxDecoration(
        color: appTheme.redA400.withOpacity(0.6),
      );
  static BoxDecoration get fillRedA40099 => BoxDecoration(
        color: appTheme.redA40099,
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal500.withOpacity(0.6),
      );
  static BoxDecoration get fillTeal500 => BoxDecoration(
        color: appTheme.teal500.withOpacity(0.9),
      );
  static BoxDecoration get fillTeal50099 => BoxDecoration(
        color: appTheme.teal50099,
      );
  static BoxDecoration get fillTeal700 => BoxDecoration(
        color: appTheme.teal700,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.4),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.65),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: appTheme.blueGray100.withOpacity(0.5),
        border: Border.all(
          color: appTheme.black900.withOpacity(0.2),
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder2 => BorderRadius.circular(
        2.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    