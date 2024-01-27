import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/randomseparate_one_dialog/models/randomseparate_one_model.dart';

/// A provider class for the RandomseparateOneDialog.
///
/// This provider manages the state of the RandomseparateOneDialog, including the
/// current randomseparateOneModelObj
class RandomseparateOneProvider extends ChangeNotifier {
  RandomseparateOneModel randomseparateOneModelObj = RandomseparateOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
