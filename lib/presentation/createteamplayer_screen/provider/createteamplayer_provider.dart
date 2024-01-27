import 'package:flutter/material.dart';import 'package:invovision_s_application1/core/app_export.dart';import 'package:invovision_s_application1/presentation/createteamplayer_screen/models/createteamplayer_model.dart';import '../models/userprofile2_item_model.dart';/// A provider class for the CreateteamplayerScreen.
///
/// This provider manages the state of the CreateteamplayerScreen, including the
/// current createteamplayerModelObj

// ignore_for_file: must_be_immutable
class CreateteamplayerProvider extends ChangeNotifier {TextEditingController nameController = TextEditingController();

TextEditingController nameController1 = TextEditingController();

TextEditingController nameController2 = TextEditingController();

CreateteamplayerModel createteamplayerModelObj = CreateteamplayerModel();

@override void dispose() { super.dispose(); nameController.dispose(); nameController1.dispose(); nameController2.dispose(); } 
 }
