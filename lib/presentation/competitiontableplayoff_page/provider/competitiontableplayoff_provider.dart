import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/competitiontableplayoff_page/models/competitiontableplayoff_model.dart';

/// A provider class for the CompetitiontableplayoffPage.
///
/// This provider manages the state of the CompetitiontableplayoffPage, including the
/// current competitiontableplayoffModelObj
class CompetitiontableplayoffProvider extends ChangeNotifier {
  CompetitiontableplayoffModel competitiontableplayoffModelObj =
      CompetitiontableplayoffModel();

  @override
  void dispose() {
    super.dispose();
  }
}
