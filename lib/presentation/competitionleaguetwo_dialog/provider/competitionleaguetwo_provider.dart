import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/competitionleaguetwo_dialog/models/competitionleaguetwo_model.dart';

/// A provider class for the CompetitionleaguetwoDialog.
///
/// This provider manages the state of the CompetitionleaguetwoDialog, including the
/// current competitionleaguetwoModelObj
class CompetitionleaguetwoProvider extends ChangeNotifier {
  TextEditingController leaguevalueController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  CompetitionleaguetwoModel competitionleaguetwoModelObj =
      CompetitionleaguetwoModel();

  @override
  void dispose() {
    super.dispose();
    leaguevalueController.dispose();
    nameController.dispose();
  }
}
