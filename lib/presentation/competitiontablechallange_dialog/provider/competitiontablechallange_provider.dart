import 'package:flutter/material.dart';import 'package:invovision_s_application1/core/app_export.dart';import 'package:invovision_s_application1/presentation/competitiontablechallange_dialog/models/competitiontablechallange_model.dart';import '../models/win_item_model.dart';/// A provider class for the CompetitiontablechallangeDialog.
///
/// This provider manages the state of the CompetitiontablechallangeDialog, including the
/// current competitiontablechallangeModelObj

// ignore_for_file: must_be_immutable
class CompetitiontablechallangeProvider extends ChangeNotifier {TextEditingController commentController = TextEditingController();

CompetitiontablechallangeModel competitiontablechallangeModelObj = CompetitiontablechallangeModel();

@override void dispose() { super.dispose(); commentController.dispose(); } 
void onSelectedChipView1(int index, bool value, ) { competitiontablechallangeModelObj.winItemList.forEach((element) {element.isSelected = false;}); competitiontablechallangeModelObj.winItemList[index].isSelected = value; notifyListeners(); } 
 }
