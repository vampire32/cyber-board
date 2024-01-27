import 'package:flutter/material.dart';import 'package:invovision_s_application1/core/app_export.dart';import 'package:invovision_s_application1/presentation/create_player_page/models/create_player_model.dart';import '../models/userprofile1_item_model.dart';/// A provider class for the CreatePlayerPage.
///
/// This provider manages the state of the CreatePlayerPage, including the
/// current createPlayerModelObj

// ignore_for_file: must_be_immutable
class CreatePlayerProvider extends ChangeNotifier {CreatePlayerModel createPlayerModelObj = CreatePlayerModel();

@override void dispose() { super.dispose(); } 
 }
