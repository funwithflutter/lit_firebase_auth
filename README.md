<p align="center"><img src="assets/lit.png" height="100" alt="Lit Firebase"></p>

<b>⚠️ Attention: This package is at an early stage. A lot of features are missing. Eventually this package will be "lit", but for now, use at your own risk.</b>

Lit Firebase Auth is a wrapper for Firebase authentication in Flutter. It provides a set of convenient utilities and widgets to easily add authentication to a Flutter mobile or web application.

Easy to use and highly customizable.

## Usage
The UI can be as customizable as you need. But for simple usage it's fairly straight forward.

### `LitAuthInit`
First, you need to initialize the package:
```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Needs to be above [MaterialApp]/[CupertinoApp]
    return LitAuthInit(
      // specify which auth providers to enable
      authProviders: AuthProviders(
        emailAndPassword: true, // enabled by default
        google: true,
        anonymous: true,
      ),
      child: MaterialApp(
        title: 'Material App',
        home: Home(),
      ),
    );
  }
}
```
### Standard Sign-in page
You can either create your own custom Sign-in page, or make use of the default built in Sign-in page.
To use the standard sign in page:

```dart
LitAuth(
  config: AuthConfig.standard(),
);
```

This will use the defaults configuration and UI theming. It's easy to provide custom decoration/configuration for the sign-in elements. For example, to override the standard email `InputDecoration` just provide a custom `InputDecoration` for the `emailTextFormField`:

```dart
LitAuth(
  config: AuthConfig.standard(
  emailTextFormField: InputDecoration(labelText: 'My beautiful label'),
)
 ```

 Or, to customize a button:

 ```dart
LitAuth(
  config: AuthConfig.standard(
    googleButton: ButtonConfig(
      themeData: ButtonThemeData(
        buttonColor: Colors.red,
      ),
      child: Text('My styled Google Sign-in'),
    ),
  ),
);

 ```
### `onAuthSuccess` and `onAuthFailure`
You can provide optional auth callbacks for success and failure.

```dart
LitAuth(
  config: AuthConfig.standard(),
  onAuthFailure: (failure) {
    print('Auth failed.');
  },
  onAuthSuccess: () {
    print('Auth success.');
  },
);
```
### `LitAuthState`
To determine the current auth state, make use of `LitAuthState`:

```dart
class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LitAuthState(
        authenticated: () => Text('Authenticated'), // Login widget, or sign in button
        unauthenticated: () => Text('Not Authenticated'), // Authenticated widget, or sign out button
      ),
    );
  }
}
```

### Additional Customization

For further customization you can directly make use of the Lit Auth components to build a completly custom Sign-in page. Legos fitting together. Tutorials and code samples will be added soon.


