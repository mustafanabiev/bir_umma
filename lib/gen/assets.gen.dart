/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/home_icon.svg
  SvgGenImage get homeIcon => const SvgGenImage('assets/icons/home_icon.svg');

  /// File path: assets/icons/message_icon.svg
  SvgGenImage get messageIcon =>
      const SvgGenImage('assets/icons/message_icon.svg');

  /// File path: assets/icons/profile_icon.svg
  SvgGenImage get profileIcon =>
      const SvgGenImage('assets/icons/profile_icon.svg');

  /// File path: assets/icons/quran_icon.svg
  SvgGenImage get quranIcon => const SvgGenImage('assets/icons/quran_icon.svg');

  /// File path: assets/icons/zikir_icon.svg
  SvgGenImage get zikirIcon => const SvgGenImage('assets/icons/zikir_icon.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [homeIcon, messageIcon, profileIcon, quranIcon, zikirIcon];
}

class $AssetsPngGen {
  const $AssetsPngGen();

  /// File path: assets/png/ait_namaz.png
  AssetGenImage get aitNamaz => const AssetGenImage('assets/png/ait_namaz.png');

  /// File path: assets/png/asr.png
  AssetGenImage get asr => const AssetGenImage('assets/png/asr.png');

  /// File path: assets/png/ayal1.png
  AssetGenImage get ayal1 => const AssetGenImage('assets/png/ayal1.png');

  /// File path: assets/png/bagimdat.png
  AssetGenImage get bagimdat => const AssetGenImage('assets/png/bagimdat.png');

  /// File path: assets/png/beshim.png
  AssetGenImage get beshim => const AssetGenImage('assets/png/beshim.png');

  /// File path: assets/png/erkek1.png
  AssetGenImage get erkek1 => const AssetGenImage('assets/png/erkek1.png');

  /// File path: assets/png/kuptan.png
  AssetGenImage get kuptan => const AssetGenImage('assets/png/kuptan.png');

  /// File path: assets/png/nafil_namaz.png
  AssetGenImage get nafilNamaz =>
      const AssetGenImage('assets/png/nafil_namaz.png');

  /// File path: assets/png/namaz.png
  AssetGenImage get namaz => const AssetGenImage('assets/png/namaz.png');

  /// File path: assets/png/sham.png
  AssetGenImage get sham => const AssetGenImage('assets/png/sham.png');
   AssetGenImage get video => const AssetGenImage('assets/png/video.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        aitNamaz,
        asr,
        ayal1,
        bagimdat,
        beshim,
        erkek1,
        kuptan,
        nafilNamaz,
        namaz,
        sham,
        video
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsPngGen png = $AssetsPngGen();
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

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
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
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
