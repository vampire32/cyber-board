import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/competitionplayoffone_page/models/competitionplayoffone_model.dart';

/// A provider class for the CompetitionplayoffonePage.
///
/// This provider manages the state of the CompetitionplayoffonePage, including the
/// current competitionplayoffoneModelObj
class CompetitionplayoffoneProvider extends ChangeNotifier {
  CompetitionplayoffoneModel competitionplayoffoneModelObj =
      CompetitionplayoffoneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
