import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/competition_league_one_page/models/competition_league_one_model.dart';

/// A provider class for the CompetitionLeagueOnePage.
///
/// This provider manages the state of the CompetitionLeagueOnePage, including the
/// current competitionLeagueOneModelObj
class CompetitionLeagueOneProvider extends ChangeNotifier {
  CompetitionLeagueOneModel competitionLeagueOneModelObj =
      CompetitionLeagueOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
