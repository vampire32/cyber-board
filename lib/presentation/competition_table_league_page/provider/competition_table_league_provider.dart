import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/competition_table_league_page/models/competition_table_league_model.dart';

/// A provider class for the CompetitionTableLeaguePage.
///
/// This provider manages the state of the CompetitionTableLeaguePage, including the
/// current competitionTableLeagueModelObj
class CompetitionTableLeagueProvider extends ChangeNotifier {
  CompetitionTableLeagueModel competitionTableLeagueModelObj =
      CompetitionTableLeagueModel();

  @override
  void dispose() {
    super.dispose();
  }
}
