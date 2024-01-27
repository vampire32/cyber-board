import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/competitiontablechallangeone_page/models/competitiontablechallangeone_model.dart';

/// A provider class for the CompetitiontablechallangeonePage.
///
/// This provider manages the state of the CompetitiontablechallangeonePage, including the
/// current competitiontablechallangeoneModelObj
class CompetitiontablechallangeoneProvider extends ChangeNotifier {
  TextEditingController disciplinevalueController = TextEditingController();

  CompetitiontablechallangeoneModel competitiontablechallangeoneModelObj =
      CompetitiontablechallangeoneModel();

  @override
  void dispose() {
    super.dispose();
    disciplinevalueController.dispose();
  }
}
