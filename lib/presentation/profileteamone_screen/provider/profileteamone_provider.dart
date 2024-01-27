import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/profileteamone_screen/models/profileteamone_model.dart';

/// A provider class for the ProfileteamoneScreen.
///
/// This provider manages the state of the ProfileteamoneScreen, including the
/// current profileteamoneModelObj
class ProfileteamoneProvider extends ChangeNotifier {
  ProfileteamoneModel profileteamoneModelObj = ProfileteamoneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
