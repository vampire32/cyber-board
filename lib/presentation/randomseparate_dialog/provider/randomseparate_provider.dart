import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/randomseparate_dialog/models/randomseparate_model.dart';

/// A provider class for the RandomseparateDialog.
///
/// This provider manages the state of the RandomseparateDialog, including the
/// current randomseparateModelObj
class RandomseparateProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController nameController1 = TextEditingController();

  RandomseparateModel randomseparateModelObj = RandomseparateModel();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    nameController1.dispose();
  }
}
