<p align="center"><img src="assets/lit.png" height="100" alt="Lit Firebase"></p>

<b>⚠️ Attention: This package is at an early stage. A lot of features are missing. Eventually this package will be "lit", but for now, use at your own risk.</b>

Lit Firebase Auth is a wrapper for Firebase authentication in Flutter. It provides a set of convenient utilities and widgets to easily add Firebase authentication to a Flutter mobile or web application.

Easy to use and highly customizable.

## Usage
The UI can be as customizable as you need. But for simple usage it's fairly straight forward.

### Initialization
First, you need to initialize the package with `LitAuthInit`:
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
### Standard Sign-in widget
You can either create your own custom Sign-in widget, or make use of the default built in one.
To use the standard widget:

```dart
LitAuth(
  config: AuthConfig.standard(),
);
```
This will use the default configuration and UI theming. See the section on decoration and theming for customization.

### Handle auth state changes
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
### Auth success and failure
You can provide optional callbacks in `LitAuth` to handle success and failure when performing sign-in.

```dart
LitAuth(
  config: AuthConfig.standard(),
  onAuthFailure: (failure) {
    print('Auth failed.'); // show error message
  },
  onAuthSuccess: () {
    print('Auth success.'); // navigate to new screen
  },
);
```
**Note**: these handlers will not be called if `LitAuth` is already disposed.

For example, if you were wrap this widget in `LitAuthState`, such as:
```dart
LitAuthState(
  authenticated: () =>
      Text('Authenticated'), // Login widget, or sign in button
  unauthenticated: () => LitAuth(
    config: AuthConfig.standard(),
    onAuthFailure: (failure) {
      print('Auth failed.'); // show error message
    },
    onAuthSuccess: () {
      print('Auth success.'); // will not be called
    },
  ),
);
```
Then in this instance the `onAuthSuccess` handler may not be called. As the *`authenticated`* state will be triggered and `LitAuth` widget disposed. *Depending on the platform, behaviour may be different. For web it may take longer for `LitAuthState` to receive a new auth value and push changes. Thus resulting in `onAuthSuccess` being called.*

### Sign out
To sign out the current user, make use of the `signOut` extension method on `BuildContext`. For example:
```dart
RaisedButton(
  onPressed: () {
    context.signOut();
  },
  child: Text('Sign out'),
);
```

### Current User
Get the current signed-in user:
```dart
context.getSignedInUser()
```

## Decoration and theming
It's easy to provide custom decoration/configuration for the sign-in elements. You can either customize the elements of the standard Sign-in widget, or create an entirely custom Sign-in widget from scratch. Up to you.

### Standard Sign-in widget customization
For example, to override the standard email `InputDecoration` just provide a custom `InputDecoration` for the `emailTextFormField`:

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

### Dialogs
For now dialogs are rendered using the `flushbar` package to show dialog messages.
**todo**: provide additional theming/overrides for dialogs.

### Additional Customization

For further customization you can directly make use of the Lit Firebase components to build a completely custom Sign-in widget. Legos fitting together. 

Instead of using the standard `AuthConfig`, set it to custom and provide your custom Sign-in widget:
```dart
LitAuth(
  config: AuthConfig.custom(
    signInScreen: CustomSignInWidget(),
  ),
);
```

Tutorials and code samples will be added soon on how to create a custom Sign-in widget. For now, see the example project for more information.
