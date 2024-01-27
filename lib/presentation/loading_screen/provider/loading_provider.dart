import 'package:flutter/material.dart';import 'package:invovision_s_application1/core/app_export.dart';import 'package:invovision_s_application1/presentation/loading_screen/models/loading_model.dart';/// A provider class for the LoadingScreen.
///
/// This provider manages the state of the LoadingScreen, including the
/// current loadingModelObj

// ignore_for_file: must_be_immutable
class LoadingProvider extends ChangeNotifier {LoadingModel loadingModelObj = LoadingModel();

@override void dispose() { super.dispose(); } 
 }
