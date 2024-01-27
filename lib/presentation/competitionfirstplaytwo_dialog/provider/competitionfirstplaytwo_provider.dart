import 'package:flutter/material.dart';import 'package:invovision_s_application1/core/app_export.dart';import 'package:invovision_s_application1/presentation/competitionfirstplaytwo_dialog/models/competitionfirstplaytwo_model.dart';/// A provider class for the CompetitionfirstplaytwoDialog.
///
/// This provider manages the state of the CompetitionfirstplaytwoDialog, including the
/// current competitionfirstplaytwoModelObj

// ignore_for_file: must_be_immutable
class CompetitionfirstplaytwoProvider extends ChangeNotifier {TextEditingController nameController = TextEditingController();

TextEditingController nameController1 = TextEditingController();

TextEditingController nameController2 = TextEditingController();

CompetitionfirstplaytwoModel competitionfirstplaytwoModelObj = CompetitionfirstplaytwoModel();

@override void dispose() { super.dispose(); nameController.dispose(); nameController1.dispose(); nameController2.dispose(); } 
 }
