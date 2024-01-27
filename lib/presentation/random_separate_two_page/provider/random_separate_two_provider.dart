import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/random_separate_two_page/models/random_separate_two_model.dart';

/// A provider class for the RandomSeparateTwoPage.
///
/// This provider manages the state of the RandomSeparateTwoPage, including the
/// current randomSeparateTwoModelObj
class RandomSeparateTwoProvider extends ChangeNotifier {
  TextEditingController teamController = TextEditingController();

  TextEditingController teamController1 = TextEditingController();

  TextEditingController teamController2 = TextEditingController();

  RandomSeparateTwoModel randomSeparateTwoModelObj = RandomSeparateTwoModel();

  @override
  void dispose() {
    super.dispose();
    teamController.dispose();
    teamController1.dispose();
    teamController2.dispose();
  }
}
