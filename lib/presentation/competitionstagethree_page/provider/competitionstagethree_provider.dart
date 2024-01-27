import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'package:invovision_s_application1/presentation/competitionstagethree_page/models/competitionstagethree_model.dart';

/// A provider class for the CompetitionstagethreePage.
///
/// This provider manages the state of the CompetitionstagethreePage, including the
/// current competitionstagethreeModelObj
class CompetitionstagethreeProvider extends ChangeNotifier {
  CompetitionstagethreeModel competitionstagethreeModelObj =
      CompetitionstagethreeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
