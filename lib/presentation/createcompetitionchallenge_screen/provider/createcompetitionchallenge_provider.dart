import 'package:flutter/material.dart';import 'package:invovision_s_application1/core/app_export.dart';import 'package:invovision_s_application1/presentation/createcompetitionchallenge_screen/models/createcompetitionchallenge_model.dart';import '../models/fifteen1_item_model.dart';import '../models/sixtyeight_item_model.dart';/// A provider class for the CreatecompetitionchallengeScreen.
///
/// This provider manages the state of the CreatecompetitionchallengeScreen, including the
/// current createcompetitionchallengeModelObj

// ignore_for_file: must_be_immutable
class CreatecompetitionchallengeProvider extends ChangeNotifier {TextEditingController nameController = TextEditingController();

TextEditingController enterprizesController = TextEditingController();

TextEditingController twentyNineController = TextEditingController();

CreatecompetitionchallengeModel createcompetitionchallengeModelObj = CreatecompetitionchallengeModel();

@override void dispose() { super.dispose(); nameController.dispose(); enterprizesController.dispose(); twentyNineController.dispose(); } 
void onSelectedChipView1(int index, bool value, ) { createcompetitionchallengeModelObj.sixtyeightItemList.forEach((element) {element.isSelected = false;}); createcompetitionchallengeModelObj.sixtyeightItemList[index].isSelected = value; notifyListeners(); } 
 }
