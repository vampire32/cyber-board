import 'package:flutter/material.dart';import 'package:invovision_s_application1/core/app_export.dart';import 'package:invovision_s_application1/presentation/createcompetitionplayoff_screen/models/createcompetitionplayoff_model.dart';import '../models/fifteen3_item_model.dart';/// A provider class for the CreatecompetitionplayoffScreen.
///
/// This provider manages the state of the CreatecompetitionplayoffScreen, including the
/// current createcompetitionplayoffModelObj

// ignore_for_file: must_be_immutable
class CreatecompetitionplayoffProvider extends ChangeNotifier {TextEditingController nameController = TextEditingController();

TextEditingController enterprizesController = TextEditingController();

TextEditingController twentyNineController = TextEditingController();

CreatecompetitionplayoffModel createcompetitionplayoffModelObj = CreatecompetitionplayoffModel();

@override void dispose() { super.dispose(); nameController.dispose(); enterprizesController.dispose(); twentyNineController.dispose(); } 
 }
