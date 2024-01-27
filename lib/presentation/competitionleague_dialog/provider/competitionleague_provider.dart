import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/competitionleague_dialog/models/competitionleague_model.dart';

/// A provider class for the CompetitionleagueDialog.
///
/// This provider manages the state of the CompetitionleagueDialog, including the
/// current competitionleagueModelObj
class CompetitionleagueProvider extends ChangeNotifier {
  TextEditingController leaguevalueController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  CompetitionleagueModel competitionleagueModelObj = CompetitionleagueModel();

  @override
  void dispose() {
    super.dispose();
    leaguevalueController.dispose();
    nameController.dispose();
  }
}
