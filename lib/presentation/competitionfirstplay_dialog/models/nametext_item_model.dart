import '../../../core/app_export.dart';/// This class is used in the [nametext_item_widget] screen.
class NametextItemModel {NametextItemModel({this.closeImage, this.nameText, this.id, }) { closeImage = closeImage  ?? ImageConstant.imgCloseYellow900;nameText = nameText  ?? "Name Surrname";id = id  ?? ""; }

String? closeImage;

String? nameText;

String? id;

 }
