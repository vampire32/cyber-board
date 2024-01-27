import '../create_team_page/widgets/twentyone_item_widget.dart';
import 'models/create_team_model.dart';
import 'models/twentyone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:invovision_s_application1/core/app_export.dart';
import 'provider/create_team_provider.dart';

// ignore_for_file: must_be_immutable
class CreateTeamPage extends StatefulWidget {
  const CreateTeamPage({Key? key})
      : super(
          key: key,
        );

  @override
  CreateTeamPageState createState() => CreateTeamPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CreateTeamProvider(),
      child: CreateTeamPage(),
    );
  }
}

class CreateTeamPageState extends State<CreateTeamPage>
    with AutomaticKeepAliveClientMixin<CreateTeamPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 8.v),
              _buildTwentyOne(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyOne(BuildContext context) {
    return Consumer<CreateTeamProvider>(
      builder: (context, provider, child) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 10.v,
            );
          },
          itemCount: provider.createTeamModelObj.twentyoneItemList.length,
          itemBuilder: (context, index) {
            TwentyoneItemModel model =
                provider.createTeamModelObj.twentyoneItemList[index];
            return TwentyoneItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
