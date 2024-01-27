import 'package:flutter/material.dart';import 'package:invovision_s_application1/core/app_export.dart';import 'package:invovision_s_application1/presentation/createcompetitionone_screen/models/createcompetitionone_model.dart';import '../models/fifteen4_item_model.dart';import '../models/sixtynine_item_model.dart';/// A provider class for the CreatecompetitiononeScreen.
///
/// This provider manages the state of the CreatecompetitiononeScreen, including the
/// current createcompetitiononeModelObj

// ignore_for_file: must_be_immutable
class CreatecompetitiononeProvider extends ChangeNotifier {TextEditingController nameController = TextEditingController();

TextEditingController enterprizesController = TextEditingController();

TextEditingController twentyNineController = TextEditingController();

CreatecompetitiononeModel createcompetitiononeModelObj = CreatecompetitiononeModel();

@override void dispose() { super.dispose(); nameController.dispose(); enterprizesController.dispose(); twentyNineController.dispose(); } 
void onSelectedChipView1(int index, bool value, ) { createcompetitiononeModelObj.sixtynineItemList.forEach((element) {element.isSelected = false;}); createcompetitiononeModelObj.sixtynineItemList[index].isSelected = value; notifyListeners(); } 
 }
