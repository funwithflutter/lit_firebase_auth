import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';
import 'package:lit_firebase_auth/src/presentation/core/auth_provider_result.dart';

class AuthWebView extends StatefulWidget {
  final String selectedUrl;
  final ProviderType providerType;

  const AuthWebView({
    @required this.selectedUrl,
    @required this.providerType,
  });

  @override
  _AuthWebViewState createState() => _AuthWebViewState();
}

class _AuthWebViewState extends State<AuthWebView> {
  final flutterWebviewPlugin = FlutterWebviewPlugin();

  @override
  void initState() {
    super.initState();

    flutterWebviewPlugin.onUrlChanged.listen((String url) {
      print(url);
      Uri uri = Uri();
      switch (widget.providerType) {
        case ProviderType.facebook:
          if (url.contains("#access_token")) {
            succeed(url);
          }

          if (url.contains(
              "https://www.facebook.com/connect/login_success.html?error=access_denied&error_code=200&error_description=Permissions+error&error_reason=user_denied")) {
            denied();
          }
          break;
        case ProviderType.github:
          var uri = Uri.parse(url);
          // uri.queryParameters.forEach((k, v) {
          //   print('key: $k - value: $v');
          // });
          final code = uri.queryParameters['code'];
          print('Code: $code');
          if (code != null) {
            Navigator.pop<AuthProviderResult>(
              context,
              AuthProviderResult.success(token: code),
            );
          }
          // if (url.contains("code")) {
          //   print('success man');
          // }

          // if (url.contains(
          //     "https://www.facebook.com/connect/login_success.html?error=access_denied&error_code=200&error_description=Permissions+error&error_reason=user_denied")) {
          //   denied();
          // }
          break;
        default:
          break;
      }
    });
  }

  @override
  void dispose() {
    flutterWebviewPlugin.dispose();
    super.dispose();
  }

  void denied() {
    Navigator.pop(context, const AuthProviderResult.failure());
  }

  void succeed(String url) {
    final params = url.split("access_token=");

    final endparam = params[1].split("&");

    Navigator.pop<AuthProviderResult>(
      context,
      AuthProviderResult.success(token: endparam[0]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: widget.selectedUrl,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(66, 103, 178, 1),
        title: const Text("Facebook login"),
      ),
    );
  }
}

enum ProviderType {
  github,
  facebook,
}
