import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/competitionfirstplayone_dialog/models/competitionfirstplayone_model.dart';

/// A provider class for the CompetitionfirstplayoneDialog.
///
/// This provider manages the state of the CompetitionfirstplayoneDialog, including the
/// current competitionfirstplayoneModelObj
class CompetitionfirstplayoneProvider extends ChangeNotifier {
  CompetitionfirstplayoneModel competitionfirstplayoneModelObj =
      CompetitionfirstplayoneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
