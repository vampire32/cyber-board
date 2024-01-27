import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/profileplayer_screen/models/profileplayer_model.dart';

/// A provider class for the ProfileplayerScreen.
///
/// This provider manages the state of the ProfileplayerScreen, including the
/// current profileplayerModelObj
class ProfileplayerProvider extends ChangeNotifier {
  ProfileplayerModel profileplayerModelObj = ProfileplayerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
