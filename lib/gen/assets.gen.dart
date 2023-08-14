/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconGen {
  const $AssetsIconGen();

  /// File path: assets/icon/icon.png
  AssetGenImage get icon => const AssetGenImage('assets/icon/icon.png');

  /// List of all assets
  List<AssetGenImage> get values => [icon];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Q.png
  AssetGenImage get q => const AssetGenImage('assets/images/Q.png');

  /// File path: assets/images/default_image.png
  AssetGenImage get defaultImage =>
      const AssetGenImage('assets/images/default_image.png');

  /// File path: assets/images/happy_photo.png
  AssetGenImage get happyPhoto =>
      const AssetGenImage('assets/images/happy_photo.png');

  /// File path: assets/images/image1.jpg
  AssetGenImage get image1 => const AssetGenImage('assets/images/image1.jpg');

  /// File path: assets/images/image10.png
  AssetGenImage get image10 => const AssetGenImage('assets/images/image10.png');

  /// File path: assets/images/image2.jpg
  AssetGenImage get image2 => const AssetGenImage('assets/images/image2.jpg');

  /// File path: assets/images/image3.jpg
  AssetGenImage get image3 => const AssetGenImage('assets/images/image3.jpg');

  /// File path: assets/images/image4.jpg
  AssetGenImage get image4 => const AssetGenImage('assets/images/image4.jpg');

  /// File path: assets/images/image5.jpg
  AssetGenImage get image5 => const AssetGenImage('assets/images/image5.jpg');

  /// File path: assets/images/image6.jpg
  AssetGenImage get image6 => const AssetGenImage('assets/images/image6.jpg');

  /// File path: assets/images/image7.jpg
  AssetGenImage get image7 => const AssetGenImage('assets/images/image7.jpg');

  /// File path: assets/images/image8.png
  AssetGenImage get image8 => const AssetGenImage('assets/images/image8.png');

  /// File path: assets/images/image9.png
  AssetGenImage get image9 => const AssetGenImage('assets/images/image9.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        q,
        defaultImage,
        happyPhoto,
        image1,
        image10,
        image2,
        image3,
        image4,
        image5,
        image6,
        image7,
        image8,
        image9
      ];
}

class $AssetsThemeGen {
  const $AssetsThemeGen();

  /// File path: assets/theme/appainter_theme.json
  String get appainterTheme => 'assets/theme/appainter_theme.json';

  /// List of all assets
  List<String> get values => [appainterTheme];
}

class Assets {
  Assets._();

  static const $AssetsIconGen icon = $AssetsIconGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsThemeGen theme = $AssetsThemeGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
