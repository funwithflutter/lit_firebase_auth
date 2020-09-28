# 0.3.0
- BREAKING: Updated to Firebase Core 0.5.0 (thanks @CiriousJoker)
- BREAKING: `User` renamed to `LitUser`
- BREAKING: `FirebaseUser` renamed to `User`
- BREAKING: `getSignedInUser()` is no longer asynchronous
- docs: various documentation updates
- Additional setup is now required to ensure that Firebase Core is initialized. Please see the documentation or example for details.

# 0.2.3

- feat: expose `LitAuthIcon` to directly use the OAuth icons (`Images`) provided by the package (Google, Apple, Twitter, Github)

# 0.2.2

- feat: add `context.watchSignedInUser()` method to watch the `User` object for changes in sign-in state.
- feat: add `context.resetSignInForm()` method to reset clear the sign-in form state (password and email). To assist in more complicated UI builds.
- fix: add notification configuration for `LitAuth.custom`
- refactor: log all 'server errors' to console to provide help in debugging
- docs: various documentation updates

# 0.2.1

- fix: revert to meta 1.1.8 package for testing

# 0.2.0

- BREAKING: change in Apple authentication method
- BREAKING: change in the way buttons are customized through `AuthConfig`
- feat: additional sign-in providers added - Github, Twitter and Apple (iOS, Android and Web)
- docs: various documentation updates

# 0.1.3

- feat: add functionality to customize notification messages

# 0.1.2

- feat: add sign in with apple support
- feat: add sign in with credential support for other identity providers
- docs: documentation updates

# 0.1.1

- feat: add `isSubmitting()` extension to `BuildContext`. To determine if an authentication request is currently active
- fix: ensure `ButtonConfig` attributes are applied to the sign-in and register buttons.
- docs: various documentation updates

# 0.1.0

- BREAKING: logic related to `LitAuth` and `AuthConfig` to manage sign-in customization.
- docs: various documentation updates

# 0.0.4

- docs: update logo path

# 0.0.3

- docs: minor documentation updates

# 0.0.2

- feat: add generated files

# 0.0.1

- feat: initial release
