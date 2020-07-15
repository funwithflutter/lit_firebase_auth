import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../domain/auth/i_auth_facade.dart';
import '../domain/auth/user.dart';
import '../infrastructure/firebase_auth_facade.dart';

class LitAuthInit extends StatelessWidget {
  const LitAuthInit({
    Key key,
    this.authProviders = const AuthProviders(), //TODO refine
    @required this.child,
  })  : assert(child != null),
        super(key: key);

  final AuthProviders authProviders;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthProviders>.value(
          value: authProviders,
        ),
        Provider<AuthFacade>(
          create: (_) =>
              FirebaseAuthFacade(enableGoogleSignIn: authProviders.google),
          lazy: false,
        ),
        StreamProvider(
          create: (context) async* {
            // return context.read<AuthFacade>().onAuthStateChanged;
            await for (final user
                in context.read<AuthFacade>().onAuthStateChanged) {
              yield user;
            }
          },
          lazy: false,
          initialData: const User.initializing(),
        ),
      ],
      child: child,
    );
  }
}

class AuthProviders {
  final bool emailAndPassword;
  final bool anonymous;
  final bool google;

  const AuthProviders({
    this.emailAndPassword = true,
    this.anonymous = false,
    this.google = false,
  });
}
