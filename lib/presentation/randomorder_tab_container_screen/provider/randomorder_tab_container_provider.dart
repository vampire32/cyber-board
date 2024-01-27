import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/randomorder_tab_container_screen/models/randomorder_tab_container_model.dart';

/// A provider class for the RandomorderTabContainerScreen.
///
/// This provider manages the state of the RandomorderTabContainerScreen, including the
/// current randomorderTabContainerModelObj
class RandomorderTabContainerProvider extends ChangeNotifier {
  RandomorderTabContainerModel randomorderTabContainerModelObj =
      RandomorderTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
