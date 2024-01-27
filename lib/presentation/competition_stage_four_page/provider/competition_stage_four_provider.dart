import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/competition_stage_four_page/models/competition_stage_four_model.dart';

/// A provider class for the CompetitionStageFourPage.
///
/// This provider manages the state of the CompetitionStageFourPage, including the
/// current competitionStageFourModelObj
class CompetitionStageFourProvider extends ChangeNotifier {
  CompetitionStageFourModel competitionStageFourModelObj =
      CompetitionStageFourModel();

  @override
  void dispose() {
    super.dispose();
  }
}
