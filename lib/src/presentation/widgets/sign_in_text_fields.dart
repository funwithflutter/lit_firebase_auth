import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../application/auth/sign_in_handler/sign_in_handler_state.dart';
import '../../application/auth/sign_in_handler/sign_in_handler_state_notifier.dart';
import '../../domain/auth/value_objects.dart';

final border = OutlineInputBorder(
  borderRadius: BorderRadius.circular(7),
);

class PasswordTextFormField extends StatelessWidget {
  const PasswordTextFormField({
    Key key,
    this.style,
    this.decoration,
  }) : super(key: key);

  final TextStyle style;
  final InputDecoration decoration;

  @override
  Widget build(BuildContext context) {
    final password =
        context.select((SignInHandlerState state) => state.password);
    return TextFormField(
      style: style,
      decoration: decoration ??
          InputDecoration(
            prefixIcon: const Icon(Icons.vpn_key),
            labelText: 'Password',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7),
            ),
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
    this.style,
    this.decoration,
  }) : super(key: key);

  final TextStyle style;
  final InputDecoration decoration;

  @override
  Widget build(BuildContext context) {
    final emailAddress =
        context.select((SignInHandlerState state) => state.emailAddress);
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      style: style,
      decoration: decoration ??
          InputDecoration(
            prefixIcon: const Icon(Icons.email),
            border: border,
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

class CellphoneTextFormField extends StatelessWidget {
  const CellphoneTextFormField({
    Key key,
    this.style,
    this.decoration,
  }) : super(key: key);

  final TextStyle style;
  final InputDecoration decoration;

  @override
  Widget build(BuildContext context) {
    final cellphoneNumber =
    context.select((SignInHandlerState state) => state.cellphoneNumber);
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(signed: true),
      style: style,
      decoration: decoration ??
          InputDecoration(
            prefixIcon: const Icon(Icons.email),
            border: border,
            labelText: 'Cellphone Number',
          ),
      autocorrect: false,
      onChanged: (value) => context
          .read<SignInHandlerStateNotifier>()
          .cellphoneNumberChanged(CellphoneNumber(value)),
      validator: (_) => cellphoneNumber.value.fold(
            (failure) => failure.maybeMap(
          invalidCellphoneNumber: (_) => 'Invalid cellphone number',
          orElse: () => 'Invalid cellphone number',
        ),
            (_) => null,
      ),
    );
  }
}
