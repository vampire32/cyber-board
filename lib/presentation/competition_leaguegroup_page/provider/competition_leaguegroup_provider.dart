import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/competition_leaguegroup_page/models/competition_leaguegroup_model.dart';

/// A provider class for the CompetitionLeaguegroupPage.
///
/// This provider manages the state of the CompetitionLeaguegroupPage, including the
/// current competitionLeaguegroupModelObj
class CompetitionLeaguegroupProvider extends ChangeNotifier {
  CompetitionLeaguegroupModel competitionLeaguegroupModelObj =
      CompetitionLeaguegroupModel();

  @override
  void dispose() {
    super.dispose();
  }
}
