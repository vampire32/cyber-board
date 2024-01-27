import 'package:flutter/material.dart';import 'package:invovision_s_application1/core/app_export.dart';import 'package:invovision_s_application1/presentation/create_team_page/models/create_team_model.dart';import '../models/twentyone_item_model.dart';/// A provider class for the CreateTeamPage.
///
/// This provider manages the state of the CreateTeamPage, including the
/// current createTeamModelObj

// ignore_for_file: must_be_immutable
class CreateTeamProvider extends ChangeNotifier {CreateTeamModel createTeamModelObj = CreateTeamModel();

@override void dispose() { super.dispose(); } 
 }
