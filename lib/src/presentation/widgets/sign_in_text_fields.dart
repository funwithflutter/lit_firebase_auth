import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../application/auth/sign_in_handler/sign_in_handler_state.dart';
import '../../application/auth/sign_in_handler/sign_in_handler_state_notifier.dart';
import '../../domain/auth/value_objects.dart';

class PasswordTextFormField extends StatelessWidget {
  const PasswordTextFormField({
    Key key,
    this.decoration,
  }) : super(key: key);

  final InputDecoration decoration;

  @override
  Widget build(BuildContext context) {
    final password =
        context.select((SignInHandlerState state) => state.password);
    return TextFormField(
      decoration: decoration ??
          const InputDecoration(
            prefixIcon: Icon(Icons.lock),
            labelText: 'Password',
          ),
      autocorrect: false,
      obscureText: true,
      onChanged: (value) => context
          .read<SignInHandlerStateNotifier>()
          .passwordChanged(Password(value)),
      validator: (_) => password.value.fold(
        (failure) => failure.maybeMap(
          shortPassword: (_) => 'Password too short',
          orElse: () => 'Invalid password',
        ),
        (_) => null,
      ),
    );
  }
}

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({
    Key key,
    this.decoration,
  }) : super(key: key);

  final InputDecoration decoration;

  @override
  Widget build(BuildContext context) {
    final emailAddress =
        context.select((SignInHandlerState state) => state.emailAddress);
    return TextFormField(
      decoration: decoration ??
          const InputDecoration(
            prefixIcon: Icon(Icons.email),
            labelText: 'Email',
          ),
      autocorrect: false,
      onChanged: (value) => context
          .read<SignInHandlerStateNotifier>()
          .emailChanged(EmailAddress(value)),
      validator: (_) => emailAddress.value.fold(
        (failure) => failure.maybeMap(
          invalidEmail: (_) => 'Invalid email',
          orElse: () => 'Invalid email',
        ),
        (_) => null,
      ),
    );
  }
}
