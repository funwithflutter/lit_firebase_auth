import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../application/auth/sign_in_handler/sign_in_handler_state.dart';

/// A wrapper for a standard [Form] widget. It allows the [Form] to respond to
/// error messages if the current email and password fields are not correct.
///
/// Should be used in conjunction with [EmailTextFormField] and
/// [PasswordTextFormField]
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
      autovalidateMode: showErrorMessages == true ? AutovalidateMode.always : AutovalidateMode.disabled,
      child: child,
    );
  }
}
