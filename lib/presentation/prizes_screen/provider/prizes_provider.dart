import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/prizes_screen/models/prizes_model.dart';

/// A provider class for the PrizesScreen.
///
/// This provider manages the state of the PrizesScreen, including the
/// current prizesModelObj
class PrizesProvider extends ChangeNotifier {
  PrizesModel prizesModelObj = PrizesModel();

  @override
  void dispose() {
    super.dispose();
  }
}
