import '../create_player_page/widgets/userprofile1_item_widget.dart';import 'models/create_player_model.dart';import 'models/userprofile1_item_model.dart';import 'package:flutter/material.dart';import 'package:invovision_s_application1/core/app_export.dart';import 'provider/create_player_provider.dart';import 'package:invovision_s_application1/presentation/competitionfirstplaytwo_dialog/competitionfirstplaytwo_dialog.dart';class CreatePlayerPage extends StatefulWidget {const CreatePlayerPage({Key? key}) : super(key: key);

@override CreatePlayerPageState createState() =>  CreatePlayerPageState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => CreatePlayerProvider(), child: CreatePlayerPage()); } 
 }
class CreatePlayerPageState extends State<CreatePlayerPage> with  AutomaticKeepAliveClientMixin<CreatePlayerPage> {@override bool get wantKeepAlive =>  true;

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: Colors.transparent, body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 8.v), _buildUserProfile(context)])))); } 
/// Section Widget
Widget _buildUserProfile(BuildContext context) { return Consumer<CreatePlayerProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 10.v);}, itemCount: provider.createPlayerModelObj.userprofile1ItemList.length, itemBuilder: (context, index) {Userprofile1ItemModel model = provider.createPlayerModelObj.userprofile1ItemList[index]; return Userprofile1ItemWidget(model, createplayer: () {createplayer(context);});});}); } 

/// Displays a dialog with the [CompetitionfirstplaytwoDialog] content.
createplayer(BuildContext context) { showDialog(context: context, builder: (_) => AlertDialog(content: CompetitionfirstplaytwoDialog.builder(context),backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0),)); } 
 }
