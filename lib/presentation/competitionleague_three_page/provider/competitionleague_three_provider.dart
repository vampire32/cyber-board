import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/competitionleague_three_page/models/competitionleague_three_model.dart';

/// A provider class for the CompetitionleagueThreePage.
///
/// This provider manages the state of the CompetitionleagueThreePage, including the
/// current competitionleagueThreeModelObj
class CompetitionleagueThreeProvider extends ChangeNotifier {
  CompetitionleagueThreeModel competitionleagueThreeModelObj =
      CompetitionleagueThreeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
