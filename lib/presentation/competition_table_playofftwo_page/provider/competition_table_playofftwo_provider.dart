import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/competition_table_playofftwo_page/models/competition_table_playofftwo_model.dart';

/// A provider class for the CompetitionTablePlayofftwoPage.
///
/// This provider manages the state of the CompetitionTablePlayofftwoPage, including the
/// current competitionTablePlayofftwoModelObj
class CompetitionTablePlayofftwoProvider extends ChangeNotifier {
  TextEditingController positionController = TextEditingController();

  CompetitionTablePlayofftwoModel competitionTablePlayofftwoModelObj =
      CompetitionTablePlayofftwoModel();

  @override
  void dispose() {
    super.dispose();
    positionController.dispose();
  }
}
