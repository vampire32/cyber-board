import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/competition_table_league_two_page/models/competition_table_league_two_model.dart';

/// A provider class for the CompetitionTableLeagueTwoPage.
///
/// This provider manages the state of the CompetitionTableLeagueTwoPage, including the
/// current competitionTableLeagueTwoModelObj
class CompetitionTableLeagueTwoProvider extends ChangeNotifier {
  TextEditingController tourOneController = TextEditingController();

  CompetitionTableLeagueTwoModel competitionTableLeagueTwoModelObj =
      CompetitionTableLeagueTwoModel();

  @override
  void dispose() {
    super.dispose();
    tourOneController.dispose();
  }
}
