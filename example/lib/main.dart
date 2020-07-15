import 'package:lit_firebase_auth/lit_firebase_auth.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LitAuthInit(
      authProviders: AuthProviders(google: true),
      child: MaterialApp(
          title: 'Material App',
          theme: ThemeData(
            primarySwatch: Colors.green,
            accentColor: Colors.pink,
            // buttonTheme: ButtonThemeData(
            //   buttonColor: Colors.pink,
            // ),
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: SplashScreen()
          // LitAuthHandler(
          //   homeScreen: Home(),
          //   config: UIConfig.standard(
          //       // enableGoogle: true,
          //       ),
          //   // config: UIConfig.custom(signInScreen: MySignInPage()),
          //   // config: UIConfig.standard(
          //   //   // enableEmailAndPassword: true,
          //   //   enableAnonymous: true,
          //   //   // enableGoolge: true,
          //   //   anonymousButtonConfig: ButtonConfig(
          //   //     themeData: ButtonThemeData(buttonColor: Colors.purple),
          //   //     child: Text(
          //   //       'Anonymous',
          //   //       style: TextStyle(
          //   //         color: Colors.white,
          //   //       ),
          //   //     ),
          //   //   ),
          //   // ),
          //   // authProviders: [
          //   //   AuthProvider.anonymousSignIn(),
          //   //   AuthProvider.githubSignIn(),
          //   //   AuthProvider.emailAndPassword(),
          //   // ],
          // ),
          ),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LitAuthState(
              authenticated: RaisedButton(
                onPressed: () {
                  context.signOut();
                },
                child: Text('Sign out'),
              ),
              unauthenticated: LitAuth(
                config: AuthConfig.standard(
                  enableEmailAndPassword: false,
                  enableGoogle: true,
                  enableAnonymous: true,
                ),
                // config: UIConfig.custom(
                //   signInScreen: CustomSignInWidget(),
                // ),
                onAuthFailure: (failure) {
                  print('Auth failed.');
                },
                onAuthSuccess: () {
                  print('Auth success.');
                },
              ),
              // unintialized: Text('Unintialized'),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSignInWidget extends StatelessWidget {
  const CustomSignInWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Welcome'),
        RaisedButton(
          onPressed: () {
            context.signInAnonymously();
          },
          child: Text('Anony'),
        ),
        SignInForm(
          formChild: Column(
            children: [
              Text('This is my sign in form'),
              EmailTextFormField(
                decoration: InputDecoration(labelText: 'Me Email Label'),
              ),
              PasswordTextFormField(),
              RaisedButton(
                onPressed: () {
                  context.signInWithEmailAndPassword();
                },
                child: Text('Sign In bro'),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signed In'),
        actions: [
          FlatButton(
            onPressed: () {
              context.signOut();
            },
            child: Text('Sign out'),
          ),
        ],
      ),
      body: Center(
        child: Text('You can do what you want here'),
      ),
    );
  }
}
