import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/create_playertab_container_screen/models/create_playertab_container_model.dart';

/// A provider class for the CreatePlayertabContainerScreen.
///
/// This provider manages the state of the CreatePlayertabContainerScreen, including the
/// current createPlayertabContainerModelObj
class CreatePlayertabContainerProvider extends ChangeNotifier {
  CreatePlayertabContainerModel createPlayertabContainerModelObj =
      CreatePlayertabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
