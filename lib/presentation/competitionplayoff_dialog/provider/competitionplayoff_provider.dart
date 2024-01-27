import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/competitionplayoff_dialog/models/competitionplayoff_model.dart';

/// A provider class for the CompetitionplayoffDialog.
///
/// This provider manages the state of the CompetitionplayoffDialog, including the
/// current competitionplayoffModelObj
class CompetitionplayoffProvider extends ChangeNotifier {
  CompetitionplayoffModel competitionplayoffModelObj =
      CompetitionplayoffModel();

  @override
  void dispose() {
    super.dispose();
  }
}
