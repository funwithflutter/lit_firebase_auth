import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../domain/auth/auth_providers.dart';
import 'core/auth_config.dart';
import 'widgets/loading.dart';
import 'widgets/sign_in_buttons.dart';
import 'widgets/sign_in_form.dart';
import 'widgets/sign_in_text_fields.dart';

class StandardSignInWidget extends StatelessWidget {
  const StandardSignInWidget({
    Key key,
    this.config,
  }) : super(key: key);

  final AuthConfigStandard config;

  @override
  Widget build(BuildContext context) {
    final authProviders = context.watch<AuthProviders>();
    return Column(
      children: [
        _title(context),
        const SizedBox(height: 8),
        if (authProviders.emailAndPassword)
          SignInForm(
            formChild: Column(
              children: [
                EmailTextFormField(
                  decoration: config.emailTextFormField,
                ),
                const SizedBox(height: 8),
                PasswordTextFormField(
                  decoration: config.passwordTextFormField,
                ),
                _formButtons(context),
              ],
            ),
          ),
        if (authProviders.anonymous)
          SignInAnonymouslyButton(buttonConfig: config.anonymousButton),
        if (authProviders.google) const SignInWithGoogleButton(),
        const LoadingWidget(),
      ],
    );
  }

  Text _title(BuildContext context) {
    return Text(
      'Sign in / Register',
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline4,
    );
  }

  Widget _formButtons(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: EmailAndPasswordSignInButton(),
        ),
        Expanded(
          child: EmailAndPasswordRegisterButton(),
        ),
      ],
    );
  }
}
