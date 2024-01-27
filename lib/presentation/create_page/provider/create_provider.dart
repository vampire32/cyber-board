import 'package:flutter/material.dart';import 'package:invovision_s_application1/core/app_export.dart';import 'package:invovision_s_application1/presentation/create_page/models/create_model.dart';import '../models/userprofile_item_model.dart';/// A provider class for the CreatePage.
///
/// This provider manages the state of the CreatePage, including the
/// current createModelObj

// ignore_for_file: must_be_immutable
class CreateProvider extends ChangeNotifier {CreateModel createModelObj = CreateModel();

@override void dispose() { super.dispose(); } 
 }
