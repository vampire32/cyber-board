import 'package:flutter/material.dart';import 'package:invovision_s_application1/core/app_export.dart';import 'package:invovision_s_application1/presentation/profileteam_dialog/models/profileteam_model.dart';import '../models/profileteam_item_model.dart';/// A provider class for the ProfileteamDialog.
///
/// This provider manages the state of the ProfileteamDialog, including the
/// current profileteamModelObj

// ignore_for_file: must_be_immutable
class ProfileteamProvider extends ChangeNotifier {ProfileteamModel profileteamModelObj = ProfileteamModel();

@override void dispose() { super.dispose(); } 
 }
