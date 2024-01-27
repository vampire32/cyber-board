import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/competitionchallengeone_screen/models/competitionchallengeone_model.dart';

/// A provider class for the CompetitionchallengeoneScreen.
///
/// This provider manages the state of the CompetitionchallengeoneScreen, including the
/// current competitionchallengeoneModelObj
class CompetitionchallengeoneProvider extends ChangeNotifier {
  TextEditingController challengeController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController nameController1 = TextEditingController();

  CompetitionchallengeoneModel competitionchallengeoneModelObj =
      CompetitionchallengeoneModel();

  @override
  void dispose() {
    super.dispose();
    challengeController.dispose();
    nameController.dispose();
    nameController1.dispose();
  }
}
