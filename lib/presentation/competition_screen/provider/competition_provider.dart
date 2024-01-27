import 'package:flutter/material.dart';import 'package:invovision_s_application1/core/app_export.dart';import 'package:invovision_s_application1/presentation/competition_screen/models/competition_model.dart';/// A provider class for the CompetitionScreen.
///
/// This provider manages the state of the CompetitionScreen, including the
/// current competitionModelObj

// ignore_for_file: must_be_immutable
class CompetitionProvider extends ChangeNotifier {TextEditingController enterdescriptionvalueController = TextEditingController();

CompetitionModel competitionModelObj = CompetitionModel();

@override void dispose() { super.dispose(); enterdescriptionvalueController.dispose(); } 
 }
