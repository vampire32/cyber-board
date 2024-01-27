import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/menu_screen/models/menu_model.dart';

/// A provider class for the MenuScreen.
///
/// This provider manages the state of the MenuScreen, including the
/// current menuModelObj
class MenuProvider extends ChangeNotifier {
  MenuModel menuModelObj = MenuModel();

  @override
  void dispose() {
    super.dispose();
  }
}
