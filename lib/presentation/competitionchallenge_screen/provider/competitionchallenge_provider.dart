import 'package:flutter/material.dart';import 'package:invovision_s_application1/core/app_export.dart';import 'package:invovision_s_application1/presentation/competitionchallenge_screen/models/competitionchallenge_model.dart';import '../models/userprofile3_item_model.dart';/// A provider class for the CompetitionchallengeScreen.
///
/// This provider manages the state of the CompetitionchallengeScreen, including the
/// current competitionchallengeModelObj

// ignore_for_file: must_be_immutable
class CompetitionchallengeProvider extends ChangeNotifier {TextEditingController challengeController = TextEditingController();

TextEditingController nameController = TextEditingController();

CompetitionchallengeModel competitionchallengeModelObj = CompetitionchallengeModel();

@override void dispose() { super.dispose(); challengeController.dispose(); nameController.dispose(); } 
 }
