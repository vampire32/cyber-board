import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/competition_challenge_two_page/models/competition_challenge_two_model.dart';

/// A provider class for the CompetitionChallengeTwoPage.
///
/// This provider manages the state of the CompetitionChallengeTwoPage, including the
/// current competitionChallengeTwoModelObj
class CompetitionChallengeTwoProvider extends ChangeNotifier {
  CompetitionChallengeTwoModel competitionChallengeTwoModelObj =
      CompetitionChallengeTwoModel();

  @override
  void dispose() {
    super.dispose();
  }
}
