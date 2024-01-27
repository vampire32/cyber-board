import 'package:flutter/material.dart';import 'package:invovision_s_application1/core/app_export.dart';import 'package:invovision_s_application1/presentation/processcontainer_page/models/processcontainer_model.dart';import '../models/fifteen_item_model.dart';/// A provider class for the ProcesscontainerPage.
///
/// This provider manages the state of the ProcesscontainerPage, including the
/// current processcontainerModelObj

// ignore_for_file: must_be_immutable
class ProcesscontainerProvider extends ChangeNotifier {ProcesscontainerModel processcontainerModelObj = ProcesscontainerModel();

@override void dispose() { super.dispose(); } 
 }
