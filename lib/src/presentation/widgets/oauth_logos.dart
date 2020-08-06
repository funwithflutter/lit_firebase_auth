import 'package:flutter/material.dart';

const iconSize = Size(24, 24);

class OAuthIcon extends StatelessWidget {
  const OAuthIcon._({
    Key key,
    @required this.assetPath,
    this.size = iconSize,
  }) : super(key: key);

  final String assetPath;
  final Size size;

  static const googleIconPath = 'graphics/google_logo.png';

  // Google logo [Image]
  factory OAuthIcon.google({Size size = iconSize}) {
    return OAuthIcon._(
      assetPath: googleIconPath,
      size: size,
    );
  }

  // Apple black logo [Image]
  factory OAuthIcon.appleBlack({Size size = iconSize}) {
    return OAuthIcon._(
      assetPath: 'graphics/apple_logo_black.png',
      size: size,
    );
  }

  // Apple white [Image]
  factory OAuthIcon.appleWhite({Size size = iconSize}) {
    return OAuthIcon._(
      assetPath: 'graphics/apple_logo_white.png',
      size: size,
    );
  }
  // Github logo [Image]
  factory OAuthIcon.github({Size size = iconSize}) {
    return OAuthIcon._(
      assetPath: 'graphics/github.png',
      size: size,
    );
  }

  // Twitter logo [Image]
  factory OAuthIcon.twitter({Size size = iconSize}) {
    return OAuthIcon._(
      assetPath: 'graphics/twitter_logo_blue.png',
      size: size,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(
        assetPath,
        package: 'lit_firebase_auth',
      ),
      height: size.height,
      width: size.width,
    );
  }
}
