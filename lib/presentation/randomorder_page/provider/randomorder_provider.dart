import 'package:flutter/material.dart';import 'package:invovision_s_application1/core/app_export.dart';import 'package:invovision_s_application1/presentation/randomorder_page/models/randomorder_model.dart';import '../models/username_item_model.dart';/// A provider class for the RandomorderPage.
///
/// This provider manages the state of the RandomorderPage, including the
/// current randomorderModelObj

// ignore_for_file: must_be_immutable
class RandomorderProvider extends ChangeNotifier {RandomorderModel randomorderModelObj = RandomorderModel();

@override void dispose() { super.dispose(); } 
 }
