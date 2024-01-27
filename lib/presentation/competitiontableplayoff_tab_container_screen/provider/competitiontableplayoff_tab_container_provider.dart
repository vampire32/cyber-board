import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/competitiontableplayoff_tab_container_screen/models/competitiontableplayoff_tab_container_model.dart';

/// A provider class for the CompetitiontableplayoffTabContainerScreen.
///
/// This provider manages the state of the CompetitiontableplayoffTabContainerScreen, including the
/// current competitiontableplayoffTabContainerModelObj
class CompetitiontableplayoffTabContainerProvider extends ChangeNotifier {
  CompetitiontableplayoffTabContainerModel
      competitiontableplayoffTabContainerModelObj =
      CompetitiontableplayoffTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
