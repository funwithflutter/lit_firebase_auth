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

  final AuthConfig config;

  static const maxWidth = 500.0;

  @override
  Widget build(BuildContext context) {
    final authProviders = context.watch<AuthProviders>();

    return Padding(
      padding: const EdgeInsets.all(8),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: maxWidth, maxHeight: 600),
        child: Column(

          children: [
            config?.title ?? _title(context),
            if (authProviders.anonymous)
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: SignInAnonymouslyButton(config: config?.anonymousButton),
              ),
            if (authProviders.facebook)
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: SignInWithFacebookButton(
                  config: config?.facebookButton,
                ),
              ),
            if (authProviders.google)
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: config?.googleButton?.map(
                      (c) => SignInWithGoogleButton(
                    config: c?.config,
                  ),
                  dark: (c) => SignInWithGoogleButton.dark(label: c?.label),
                  light: (c) =>
                      SignInWithGoogleButton.light(label: c?.label),
                ) ??
                    SignInWithGoogleButton.dark(),
              ),
            if (authProviders.apple)
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: config?.appleButton?.map(
                      (c) => SignInWithAppleButton(config: c?.config),
                  dark: (c) => SignInWithAppleButton.dark(label: c?.label),
                  light: (c) =>
                      SignInWithAppleButton.light(label: c?.label),
                ) ??
                    SignInWithAppleButton.dark(),
              ),
            if (authProviders.github)
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: SignInWithGithubButton(
                  config: config?.githubButton,
                ),
              ),
            if (authProviders.twitter)
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: SignInWithTwitterButton(
                  config: config?.twitterButton,
                ),
              ),
            const SizedBox(height: 16),
            if (authProviders.emailAndPassword)
              SignInForm(
                child: Column(
                  children: [
                    EmailTextFormField(
                      style: config?.emailTextField?.style,
                      decoration: config?.emailTextField?.inputDecoration,
                    ),
                    const SizedBox(height: 8),
                    PasswordTextFormField(
                      style: config?.passwordTextField?.style,
                      decoration: config?.passwordTextField?.inputDecoration,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: EmailAndPasswordSignInButton(
                            config: config?.signInButton,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: EmailAndPasswordRegisterButton(
                            config: config?.registerButton,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            if (authProviders.cellphone)
              SignInForm(
                child: Column(
                  children: [
                    CellphoneTextFormField(
                      style: config?.emailTextField?.style,
                      decoration: config?.emailTextField?.inputDecoration,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: EmailAndPasswordSignInButton(
                            config: config?.signInButton,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: EmailAndPasswordRegisterButton(
                            config: config?.registerButton,
                          ),
                        ),
                      ],
                    ),
                  ],
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
}
