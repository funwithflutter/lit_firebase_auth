import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../application/auth/sign_in_handler/sign_in_handler_state.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key key, @required this.formChild})
      : assert(formChild != null),
        super(key: key);

  final Widget formChild;

  @override
  Widget build(BuildContext context) {
    final showErrorMessages = context.select(
      (SignInHandlerState state) => state.showErrorMessages,
    );
    return Form(
      autovalidate: showErrorMessages,
      child: formChild,
    );
  }
}
