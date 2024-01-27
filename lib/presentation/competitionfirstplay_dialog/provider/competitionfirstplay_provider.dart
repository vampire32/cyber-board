import 'package:flutter/material.dart';import 'package:invovision_s_application1/core/app_export.dart';import 'package:invovision_s_application1/presentation/competitionfirstplay_dialog/models/competitionfirstplay_model.dart';import '../models/nametext_item_model.dart';/// A provider class for the CompetitionfirstplayDialog.
///
/// This provider manages the state of the CompetitionfirstplayDialog, including the
/// current competitionfirstplayModelObj

// ignore_for_file: must_be_immutable
class CompetitionfirstplayProvider extends ChangeNotifier {CompetitionfirstplayModel competitionfirstplayModelObj = CompetitionfirstplayModel();

@override void dispose() { super.dispose(); } 
 }
