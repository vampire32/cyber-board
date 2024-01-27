import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/competitionstagetwo_page/models/competitionstagetwo_model.dart';

/// A provider class for the CompetitionstagetwoPage.
///
/// This provider manages the state of the CompetitionstagetwoPage, including the
/// current competitionstagetwoModelObj
class CompetitionstagetwoProvider extends ChangeNotifier {
  CompetitionstagetwoModel competitionstagetwoModelObj =
      CompetitionstagetwoModel();

  @override
  void dispose() {
    super.dispose();
  }
}
