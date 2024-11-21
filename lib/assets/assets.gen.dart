/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $LibGen {
  const $LibGen();

  /// Directory path: lib/assets
  $LibAssetsGen get assets => const $LibAssetsGen();
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/fertilizer.png
  AssetGenImage get fertilizer =>
      const AssetGenImage('assets/icons/fertilizer.png');

  /// File path: assets/icons/fertilizer2.png
  AssetGenImage get fertilizer2 =>
      const AssetGenImage('assets/icons/fertilizer2.png');

  /// File path: assets/icons/fertilizer3.png
  AssetGenImage get fertilizer3 =>
      const AssetGenImage('assets/icons/fertilizer3.png');

  /// File path: assets/icons/fertilizer4.png
  AssetGenImage get fertilizer4 =>
      const AssetGenImage('assets/icons/fertilizer4.png');

  /// File path: assets/icons/img.png
  AssetGenImage get imgPng => const AssetGenImage('assets/icons/img.png');

  /// File path: assets/icons/img.svg
  SvgGenImage get imgSvg => const SvgGenImage('assets/icons/img.svg');

  /// File path: assets/icons/light.png
  AssetGenImage get light => const AssetGenImage('assets/icons/light.png');

  /// File path: assets/icons/light2.png
  AssetGenImage get light2 => const AssetGenImage('assets/icons/light2.png');

  /// File path: assets/icons/light3.png
  AssetGenImage get light3 => const AssetGenImage('assets/icons/light3.png');

  /// File path: assets/icons/light4.png
  AssetGenImage get light4 => const AssetGenImage('assets/icons/light4.png');

  /// File path: assets/icons/water.png
  AssetGenImage get water => const AssetGenImage('assets/icons/water.png');

  /// File path: assets/icons/water2.png
  AssetGenImage get water2 => const AssetGenImage('assets/icons/water2.png');

  /// File path: assets/icons/water3.png
  AssetGenImage get water3 => const AssetGenImage('assets/icons/water3.png');

  /// File path: assets/icons/water4.png
  AssetGenImage get water4 => const AssetGenImage('assets/icons/water4.png');

  /// List of all assets
  List<dynamic> get values => [
        fertilizer,
        fertilizer2,
        fertilizer3,
        fertilizer4,
        imgPng,
        imgSvg,
        light,
        light2,
        light3,
        light4,
        water,
        water2,
        water3,
        water4
      ];
}

class $AssetsIllustrationsGen {
  const $AssetsIllustrationsGen();

  /// File path: assets/illustrations/background.jpg
  AssetGenImage get background =>
      const AssetGenImage('assets/illustrations/background.jpg');

  /// File path: assets/illustrations/dry.png
  AssetGenImage get dry => const AssetGenImage('assets/illustrations/dry.png');

  /// File path: assets/illustrations/flabby.png
  AssetGenImage get flabby =>
      const AssetGenImage('assets/illustrations/flabby.png');

  /// File path: assets/illustrations/normal.png
  AssetGenImage get normal =>
      const AssetGenImage('assets/illustrations/normal.png');

  /// File path: assets/illustrations/rotten.png
  AssetGenImage get rotten =>
      const AssetGenImage('assets/illustrations/rotten.png');

  /// List of all assets
  List<AssetGenImage> get values => [background, dry, flabby, normal, rotten];
}

class $AssetsLogosGen {
  const $AssetsLogosGen();

  /// File path: assets/logos/primary.png
  AssetGenImage get primary => const AssetGenImage('assets/logos/primary.png');

  /// List of all assets
  List<AssetGenImage> get values => [primary];
}

class $LibAssetsGen {
  const $LibAssetsGen();

  /// Directory path: lib/assets/l10n
  $LibAssetsL10nGen get l10n => const $LibAssetsL10nGen();
}

class $LibAssetsL10nGen {
  const $LibAssetsL10nGen();

  /// File path: lib/assets/l10n/app_localizations.g.dart
  String get appLocalizationsG => 'lib/assets/l10n/app_localizations.g.dart';

  /// File path: lib/assets/l10n/app_localizations_en.g.dart
  String get appLocalizationsEnG =>
      'lib/assets/l10n/app_localizations_en.g.dart';

  /// File path: lib/assets/l10n/l10n.dart
  String get l10n => 'lib/assets/l10n/l10n.dart';

  /// List of all assets
  List<String> get values => [appLocalizationsG, appLocalizationsEnG, l10n];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsIllustrationsGen illustrations =
      $AssetsIllustrationsGen();
  static const $AssetsLogosGen logos = $AssetsLogosGen();
  static const $LibGen lib = $LibGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    bool gaplessPlayback = true,
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

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
