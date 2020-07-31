/// The error that will be thrown if the correct [AuthProviders] have not
/// been enabled in [LitAuthInit]
class AuthProviderNotEnabled implements Exception {
  // A string description of the authentication provider being requested.
  final String provider;

  /// Create a AuthProviderNotEnabled error
  AuthProviderNotEnabled(
    this.provider,
  );

  @override
  String toString() {
    return '''
Error: The <$provider> authentication provider is not enabled for this project.

Make sure the correct providers are enabled in the [LitAuthInit] configuration.
For example:

```
Widget build(BuildContext context) {
  return LitAuthInit(
    authProviders: AuthProviders(
      emailAndPassword: false,
      google: true,
      anonymous: true,
    ),
    child: ...
```
''';
  }
}
