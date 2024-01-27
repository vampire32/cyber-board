import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/randomorderone_dialog/models/randomorderone_model.dart';

/// A provider class for the RandomorderoneDialog.
///
/// This provider manages the state of the RandomorderoneDialog, including the
/// current randomorderoneModelObj
class RandomorderoneProvider extends ChangeNotifier {
  RandomorderoneModel randomorderoneModelObj = RandomorderoneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
