import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/end_screen/models/end_model.dart';

/// A provider class for the EndScreen.
///
/// This provider manages the state of the EndScreen, including the
/// current endModelObj
class EndProvider extends ChangeNotifier {
  EndModel endModelObj = EndModel();

  @override
  void dispose() {
    super.dispose();
  }
}
