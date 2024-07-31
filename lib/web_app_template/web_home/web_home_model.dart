import '/flutter_flow/flutter_flow_util.dart';
import '/notifications/user_list_small/user_list_small_widget.dart';
import '/web_app_template/side_nav/side_nav_widget.dart';
import 'web_home_widget.dart' show WebHomeWidget;
import 'package:flutter/material.dart';

class WebHomeModel extends FlutterFlowModel<WebHomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // Models for user_ListSmall dynamic component.
  late FlutterFlowDynamicModels<UserListSmallModel> userListSmallModels;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
    userListSmallModels = FlutterFlowDynamicModels(() => UserListSmallModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavModel.dispose();
    userListSmallModels.dispose();
  }
}
