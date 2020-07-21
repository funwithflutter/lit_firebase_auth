import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../application/auth/sign_in_handler/sign_in_handler_state.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key key, @required this.child})
      : assert(child != null),
        super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final showErrorMessages = context.select(
      (SignInHandlerState state) => state.showErrorMessages,
    );
    return Form(
      autovalidate: showErrorMessages,
      child: child,
    );
  }
}
