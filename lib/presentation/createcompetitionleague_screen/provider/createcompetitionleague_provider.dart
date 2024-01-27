import 'package:flutter/material.dart';import 'package:invovision_s_application1/core/app_export.dart';import 'package:invovision_s_application1/presentation/createcompetitionleague_screen/models/createcompetitionleague_model.dart';import '../models/fifteen2_item_model.dart';/// A provider class for the CreatecompetitionleagueScreen.
///
/// This provider manages the state of the CreatecompetitionleagueScreen, including the
/// current createcompetitionleagueModelObj

// ignore_for_file: must_be_immutable
class CreatecompetitionleagueProvider extends ChangeNotifier {TextEditingController nameController = TextEditingController();

TextEditingController enterprizesController = TextEditingController();

TextEditingController twentyNineController = TextEditingController();

CreatecompetitionleagueModel createcompetitionleagueModelObj = CreatecompetitionleagueModel();

@override void dispose() { super.dispose(); nameController.dispose(); enterprizesController.dispose(); twentyNineController.dispose(); } 
 }
