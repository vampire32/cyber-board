import 'package:flutter/material.dart';import 'package:invovision_s_application1/core/app_export.dart';import 'package:invovision_s_application1/presentation/createcompetitionchalleng_page/models/createcompetitionchalleng_model.dart';import '../models/sixtyeight2_item_model.dart';/// A provider class for the CreatecompetitionchallengPage.
///
/// This provider manages the state of the CreatecompetitionchallengPage, including the
/// current createcompetitionchallengModelObj

// ignore_for_file: must_be_immutable
class CreatecompetitionchallengProvider extends ChangeNotifier {TextEditingController stageController = TextEditingController();

TextEditingController nameController = TextEditingController();

CreatecompetitionchallengModel createcompetitionchallengModelObj = CreatecompetitionchallengModel();

@override void dispose() { super.dispose(); stageController.dispose(); nameController.dispose(); } 
void onSelectedChipView1(int index, bool value, ) { createcompetitionchallengModelObj.sixtyeight2ItemList.forEach((element) {element.isSelected = false;}); createcompetitionchallengModelObj.sixtyeight2ItemList[index].isSelected = value; notifyListeners(); } 
 }
