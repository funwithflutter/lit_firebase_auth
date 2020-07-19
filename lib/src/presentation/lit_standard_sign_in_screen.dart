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

  // static final textInputDecoration = InputDecoration(
  //   border: OutlineInputBorder(
  //     borderRadius: BorderRadius.circular(2),
  //   ),
  // );
  static const maxWidth = 500.0;

  @override
  Widget build(BuildContext context) {
    final authProviders = context.watch<AuthProviders>();
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: maxWidth),
        child: Column(
          children: [
            config.title ?? _title(context),
            const SizedBox(height: 16),
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
            const SizedBox(height: 16),
            Text(
              'or',
              style: Theme.of(context).textTheme.overline,
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 300),
              child: const Divider(
                thickness: 2,
              ),
            ),
            if (authProviders.anonymous)
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: SignInAnonymouslyButton(config: config.anonymousButton),
              ),
            if (authProviders.google)
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: SignInWithGoogleButton(
                  config: config.googleButton,
                ),
              ),
            const LoadingWidget(),
          ],
        ),
      ),
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
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: EmailAndPasswordSignInButton(),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: EmailAndPasswordRegisterButton(),
        ),
      ],
    );
  }
}
