import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/competition_stageone_page/models/competition_stageone_model.dart';

/// A provider class for the CompetitionStageonePage.
///
/// This provider manages the state of the CompetitionStageonePage, including the
/// current competitionStageoneModelObj
class CompetitionStageoneProvider extends ChangeNotifier {
  CompetitionStageoneModel competitionStageoneModelObj =
      CompetitionStageoneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
