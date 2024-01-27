import '../create_page/widgets/userprofile_item_widget.dart';import 'models/create_model.dart';import 'models/userprofile_item_model.dart';import 'package:flutter/material.dart';import 'package:invovision_s_application1/core/app_export.dart';import 'provider/create_provider.dart';class CreatePage extends StatefulWidget {const CreatePage({Key? key}) : super(key: key);

@override CreatePageState createState() =>  CreatePageState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => CreateProvider(), child: CreatePage()); } 
 }
class CreatePageState extends State<CreatePage> with  AutomaticKeepAliveClientMixin<CreatePage> {@override bool get wantKeepAlive =>  true;

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: Colors.transparent, body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 8.v), _buildUserProfile(context)])))); } 
/// Section Widget
Widget _buildUserProfile(BuildContext context) { return Consumer<CreateProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 10.v);}, itemCount: provider.createModelObj.userprofileItemList.length, itemBuilder: (context, index) {UserprofileItemModel model = provider.createModelObj.userprofileItemList[index]; return UserprofileItemWidget(model, show: () {show(context);});});}); } 
/// Navigates to the createcompetitionplayoffScreen when the action is triggered.
show(BuildContext context) { NavigatorService.pushNamed(AppRoutes.createcompetitionplayoffScreen, ); } 
 }
