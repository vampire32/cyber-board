import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/competition_stage_page/models/competition_stage_model.dart';

/// A provider class for the CompetitionStagePage.
///
/// This provider manages the state of the CompetitionStagePage, including the
/// current competitionStageModelObj
class CompetitionStageProvider extends ChangeNotifier {
  CompetitionStageModel competitionStageModelObj = CompetitionStageModel();

  @override
  void dispose() {
    super.dispose();
  }
}
