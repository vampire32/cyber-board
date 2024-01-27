import 'package:flutter/material.dart';import 'package:invovision_s_application1/core/app_export.dart';import 'package:invovision_s_application1/presentation/guide_screen/models/guide_model.dart';/// A provider class for the GuideScreen.
///
/// This provider manages the state of the GuideScreen, including the
/// current guideModelObj

// ignore_for_file: must_be_immutable
class GuideProvider extends ChangeNotifier {GuideModel guideModelObj = GuideModel();

@override void dispose() { super.dispose(); } 
 }
