import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/nav_bar1/nav_bar1_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PollPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for Title widget.
  TextEditingController? titleController1;
  String? Function(BuildContext, String?)? titleController1Validator;
  // State field(s) for Title widget.
  TextEditingController? titleController2;
  String? Function(BuildContext, String?)? titleController2Validator;
  // State field(s) for Title widget.
  TextEditingController? titleController3;
  String? Function(BuildContext, String?)? titleController3Validator;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for Title widget.
  TextEditingController? titleController4;
  String? Function(BuildContext, String?)? titleController4Validator;
  // State field(s) for Title widget.
  TextEditingController? titleController5;
  String? Function(BuildContext, String?)? titleController5Validator;
  // State field(s) for Title widget.
  TextEditingController? titleController6;
  String? Function(BuildContext, String?)? titleController6Validator;
  // Model for NavBar1 component.
  late NavBar1Model navBar1Model;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navBar1Model = createModel(context, () => NavBar1Model());
  }

  void dispose() {
    unfocusNode.dispose();
    titleController1?.dispose();
    titleController2?.dispose();
    titleController3?.dispose();
    titleController4?.dispose();
    titleController5?.dispose();
    titleController6?.dispose();
    navBar1Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
