import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
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
