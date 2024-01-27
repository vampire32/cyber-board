import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/competitiontableleagueone_page/models/competitiontableleagueone_model.dart';

/// A provider class for the CompetitiontableleagueonePage.
///
/// This provider manages the state of the CompetitiontableleagueonePage, including the
/// current competitiontableleagueoneModelObj
class CompetitiontableleagueoneProvider extends ChangeNotifier {
  TextEditingController group419Controller = TextEditingController();

  TextEditingController facebookController = TextEditingController();

  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  TextEditingController facebookController1 = TextEditingController();

  TextEditingController editTextController2 = TextEditingController();

  TextEditingController editTextController3 = TextEditingController();

  CompetitiontableleagueoneModel competitiontableleagueoneModelObj =
      CompetitiontableleagueoneModel();

  @override
  void dispose() {
    super.dispose();
    group419Controller.dispose();
    facebookController.dispose();
    editTextController.dispose();
    editTextController1.dispose();
    facebookController1.dispose();
    editTextController2.dispose();
    editTextController3.dispose();
  }
}
