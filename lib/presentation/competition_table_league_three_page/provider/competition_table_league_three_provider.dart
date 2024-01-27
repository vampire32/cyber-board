import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/competition_table_league_three_page/models/competition_table_league_three_model.dart';

/// A provider class for the CompetitionTableLeagueThreePage.
///
/// This provider manages the state of the CompetitionTableLeagueThreePage, including the
/// current competitionTableLeagueThreeModelObj
class CompetitionTableLeagueThreeProvider extends ChangeNotifier {
  TextEditingController avalueController = TextEditingController();

  CompetitionTableLeagueThreeModel competitionTableLeagueThreeModelObj =
      CompetitionTableLeagueThreeModel();

  @override
  void dispose() {
    super.dispose();
    avalueController.dispose();
  }
}
