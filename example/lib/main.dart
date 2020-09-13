import 'package:lit_firebase_auth/lit_firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Needed for Firebase core
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Create the initilization Future outside of `build`:
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    // Before Lit Auth can be used, Firebase needs to be initialized and the
    // initialization needs to finish.
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Center(child: Text('Something went wrong'));
        }
        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          // Initialize Lit Firebase Auth. Needs to be called before
          // `MaterialApp`, to ensure all of the child widget, even when
          // navigating to a new route, has access to the Lit auth methods
          return LitAuthInit(
            authProviders: const AuthProviders(
              emailAndPassword: true, // enabled by default
              google: true,
              apple: true,
              anonymous: true,
              github: true,
              twitter: true,
            ),
            child: MaterialApp(
              title: 'Material App',
              themeMode: ThemeMode.light,
              darkTheme: ThemeData.dark(),
              theme: ThemeData(
                visualDensity: VisualDensity.adaptivePlatformDensity,
                buttonTheme: ButtonThemeData(
                  buttonColor: Colors.white,
                  textTheme: ButtonTextTheme.primary,
                  height: 40,
                ),
              ),
              home: SplashScreen(),
            ),
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Center(child: CircularProgressIndicator());
      },
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
        child: SingleChildScrollView(
          child: LitAuthState(
            authenticated: YourAuthenticatedWidget(),

            /// Standard
            unauthenticated: LitAuth(
              config: AuthConfig(
                title: Text(
                  '🔥Welcome to Lit Firebase!🔥',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline4,
                ),
                googleButton: GoogleButtonConfig.light(),
                appleButton: AppleButtonConfig.dark(),
                emailTextField: TextFieldConfig(
                  style: TextStyle(fontSize: 18, color: Colors.red),
                  inputDecoration: InputDecoration(
                    labelText: 'Your Email',
                  ),
                ),
              ),
            ),

            // USE THIS FOR A CUSTOM SIGN IN WIDGET
            /// Custom
            // unauthenticated: LitAuth.custom(
            //   child: CustomSignInWidget(),
            // ),
          ),
        ),
      ),
    );
  }
}

/// An example widget. This can be anything that you want to show after
/// succesful authentication
class YourAuthenticatedWidget extends StatelessWidget {
  const YourAuthenticatedWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      icon: Icon(Icons.lock_outline),
      onPressed: () {
        context.signOut();
      },
      label: Text("Sign out"),
    );
  }
}

/// A custom Sign-in widget built with Lit Firebase components
class CustomSignInWidget extends StatelessWidget {
  const CustomSignInWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Welcome', style: Theme.of(context).textTheme.headline4),

        // You need to wrap the custom sign-in widgets with a [SignInForm].
        // This is used to validate the email and password
        SignInForm(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'A custom form',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: EmailTextFormField(
                  decoration: InputDecoration(labelText: 'My Email Label'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: PasswordTextFormField(
                  decoration: InputDecoration(labelText: 'My Password Label'),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  context.signInWithEmailAndPassword();
                },
                child: Text('Sign In'),
              ),
              FlatButton(
                onPressed: () {
                  context.signInAnonymously();
                },
                child: Text('Anony Sign In'),
              ),
              FlatButton(
                onPressed: () {
                  context.signInWithGithub();
                },
                child: Text('Github Sign In'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
