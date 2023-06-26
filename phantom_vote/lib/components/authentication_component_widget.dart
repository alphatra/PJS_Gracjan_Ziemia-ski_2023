import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'authentication_component_model.dart';
export 'authentication_component_model.dart';

class AuthenticationComponentWidget extends StatefulWidget {
  const AuthenticationComponentWidget({Key? key}) : super(key: key);

  @override
  _AuthenticationComponentWidgetState createState() =>
      _AuthenticationComponentWidgetState();
}

class _AuthenticationComponentWidgetState
    extends State<AuthenticationComponentWidget> {
  late AuthenticationComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AuthenticationComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
