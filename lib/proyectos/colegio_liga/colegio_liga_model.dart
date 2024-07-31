import '/flutter_flow/flutter_flow_util.dart';
import 'colegio_liga_widget.dart' show ColegioLigaWidget;
import 'package:flutter/material.dart';

class ColegioLigaModel extends FlutterFlowModel<ColegioLigaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }
}
