import '/flutter_flow/flutter_flow_util.dart';
import '/web_app_template/side_nav/side_nav_widget.dart';
import 'web_flow01_widget.dart' show WebFlow01Widget;
import 'package:flutter/material.dart';

class WebFlow01Model extends FlutterFlowModel<WebFlow01Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavModel.dispose();
    tabBarController?.dispose();
  }
}
