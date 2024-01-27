import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/createcompetitionchalleng_tab_container_screen/models/createcompetitionchalleng_tab_container_model.dart';

/// A provider class for the CreatecompetitionchallengTabContainerScreen.
///
/// This provider manages the state of the CreatecompetitionchallengTabContainerScreen, including the
/// current createcompetitionchallengTabContainerModelObj
class CreatecompetitionchallengTabContainerProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController prizesvalueController = TextEditingController();

  TextEditingController descriptionvalueController = TextEditingController();

  CreatecompetitionchallengTabContainerModel
      createcompetitionchallengTabContainerModelObj =
      CreatecompetitionchallengTabContainerModel();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    prizesvalueController.dispose();
    descriptionvalueController.dispose();
  }
}
