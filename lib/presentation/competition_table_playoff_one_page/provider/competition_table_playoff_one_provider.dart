import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/competition_table_playoff_one_page/models/competition_table_playoff_one_model.dart';

/// A provider class for the CompetitionTablePlayoffOnePage.
///
/// This provider manages the state of the CompetitionTablePlayoffOnePage, including the
/// current competitionTablePlayoffOneModelObj
class CompetitionTablePlayoffOneProvider extends ChangeNotifier {
  CompetitionTablePlayoffOneModel competitionTablePlayoffOneModelObj =
      CompetitionTablePlayoffOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
