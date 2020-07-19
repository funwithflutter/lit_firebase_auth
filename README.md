<p align="center"><img src="assets/lit.png" height="125" alt="Lit Firebase"></p>

<h1 align="center" style="margin-top: 0px; font-size: 4em;">Lit Firebase Auth</h1>

<b>⚠️ Attention: This package is at an early stage. A lot of features are missing. Eventually this package will be "lit", but for now, use at your own risk.</b>

Pre-lit Firebase authentication. It provides a set of convenient utilities and widgets to easily add Firebase auth to a Flutter app.


## Features

- **Multiple platform support**
  - Works on mobile and web. No changes needed
  - Windows, macOS and Linux to be added soon
- **Multiple authentication providers**
  - Enable third party providers (Google)
  - More to be added soon
- **Services and state managed for you**
  - Easily interact with Firebase from anywhere in your app
  - Monitor the auth state and react to changes
- **Error handling and error messages**
  - Built in error handling that will display friendly in-app error messages
  - Error/Success dialogs will be customizable in future versions
- **Highly customizable**
  - Either use the standard sign-in widgets, or easily create your own.

## Getting started

See the [example](example/) project to get up and running fast.

## Usage
The two most important widgets are 
- `LitAuthInit` - which initializes the package and exposes the services that will be used in your application.
- `LitAuth` - which renders the UI (forms, buttons and dialogs).

### Initialization
First, you need to initialize the package with `LitAuthInit`. This should be at the root of your application. Above `MaterialApp`/`CupertinoApp`, and above any widgets that want to access authentication functionality.

For example:

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
You can either create your own custom Sign-in widget, or make use of the standard built in one.
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

For example, if you were to wrap this widget in `LitAuthState`, such as:
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
The UI can be as customizable as you need. But for simple usage it's fairly straight forward.

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
    signIn: CustomSignInWidget(),
  ),
);
```

Tutorials and code samples will be added soon on how to create a custom Sign-in widget. For now, see the example project for more information.

## Planned features


|                   | State       |                                                                  |
| ----------------- | ----------  | ---------------------------------------------------------------- |
| Platforms         | ⌛          | Support more platforms (Windows, macOS, Linux)                   |
| Auth providers    | ⌛          | Support more authentication providers (Github, Facebook)         |
| Cupertino         | ⌛          | Cupertino look and feel                                          |
| Password reset    | ❌          | Add services and UI to reset password/email                      |
| Email confirmation| ❌          | Add UI to notify users they need to confirm their email address  |
| Support UI        | ❌          | Assist users who cannot authenticate with support links          |
| Custom dialogs    | ❌          | Add support to customize dialog messages                         |
| Adaptive layouts  | ⌛          | Adaptive layouts to support multiple screen sizes               |
| Customization     | ❌          | Even more, or easier, customization                             |
| Testing           | ❌          | Add testing                                                     |

## Dart Versions

- Dart 2: >= 2.7.0

## Maintainers

- [Gordon Hayes](https://github.com/funflutter)

## Starware

Lit Firebase is Starware
This means you're free to use the project, as long as you star ⭐ its GitHub repository or give a thumbs up 👍 on Pub.