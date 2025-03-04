import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff745b00),
      surfaceTint: Color(0xff745b00),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xfff2c94c),
      onPrimaryContainer: Color(0xff6b5400),
      secondary: Color(0xff5d5f5f),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffffff),
      onSecondaryContainer: Color(0xff747676),
      tertiary: Color(0xff384149),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff4f5861),
      onTertiaryContainer: Color(0xffc5ced9),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffdf8f7),
      onSurface: Color(0xff1c1b1b),
      onSurfaceVariant: Color(0xff4d4637),
      outline: Color(0xff7e7665),
      outlineVariant: Color(0xffd0c5b1),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff31302f),
      inversePrimary: Color(0xffebc246),
      primaryFixed: Color(0xffffe08b),
      onPrimaryFixed: Color(0xff241a00),
      primaryFixedDim: Color(0xffebc246),
      onPrimaryFixedVariant: Color(0xff584400),
      secondaryFixed: Color(0xffe2e2e2),
      onSecondaryFixed: Color(0xff1a1c1c),
      secondaryFixedDim: Color(0xffc6c6c7),
      onSecondaryFixedVariant: Color(0xff454747),
      tertiaryFixed: Color(0xffdae3ee),
      onTertiaryFixed: Color(0xff141c24),
      tertiaryFixedDim: Color(0xffbec7d2),
      onTertiaryFixedVariant: Color(0xff3f4850),
      surfaceDim: Color(0xffddd9d8),
      surfaceBright: Color(0xfffdf8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff7f3f1),
      surfaceContainer: Color(0xfff1edeb),
      surfaceContainerHigh: Color(0xffebe7e6),
      surfaceContainerHighest: Color(0xffe6e2e0),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff443400),
      surfaceTint: Color(0xff745b00),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff866a00),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff343637),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff6c6d6d),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff2e373f),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff4f5861),
      onTertiaryContainer: Color(0xfffcfcff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffdf8f7),
      onSurface: Color(0xff121110),
      onSurfaceVariant: Color(0xff3b3627),
      outline: Color(0xff595242),
      outlineVariant: Color(0xff746c5b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff31302f),
      inversePrimary: Color(0xffebc246),
      primaryFixed: Color(0xff866a00),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff685200),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff6c6d6d),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff535555),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff656e77),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff4d565f),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc9c6c4),
      surfaceBright: Color(0xfffdf8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff7f3f1),
      surfaceContainer: Color(0xffebe7e6),
      surfaceContainerHigh: Color(0xffe0dcda),
      surfaceContainerHighest: Color(0xffd5d1cf),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff382a00),
      surfaceTint: Color(0xff745b00),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff5a4700),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff2a2c2d),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff48494a),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff242d35),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff414a53),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffdf8f7),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff312c1e),
      outlineVariant: Color(0xff4f4939),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff31302f),
      inversePrimary: Color(0xffebc246),
      primaryFixed: Color(0xff5a4700),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff3f3100),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff48494a),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff313333),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff414a53),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff2b343c),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffbbb8b7),
      surfaceBright: Color(0xfffdf8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff4f0ee),
      surfaceContainer: Color(0xffe6e2e0),
      surfaceContainerHigh: Color(0xffd7d4d2),
      surfaceContainerHighest: Color(0xffc9c6c4),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffe8ad),
      surfaceTint: Color(0xffebc246),
      onPrimary: Color(0xff3d2f00),
      primaryContainer: Color(0xfff2c94c),
      onPrimaryContainer: Color(0xff6b5400),
      secondary: Color(0xffffffff),
      onSecondary: Color(0xff2f3131),
      secondaryContainer: Color(0xffe2e2e2),
      onSecondaryContainer: Color(0xff636565),
      tertiary: Color(0xffbec7d2),
      onTertiary: Color(0xff29313a),
      tertiaryContainer: Color(0xff4f5861),
      onTertiaryContainer: Color(0xffc5ced9),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff141313),
      onSurface: Color(0xffe6e2e0),
      onSurfaceVariant: Color(0xffd0c5b1),
      outline: Color(0xff99907d),
      outlineVariant: Color(0xff4d4637),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe6e2e0),
      inversePrimary: Color(0xff745b00),
      primaryFixed: Color(0xffffe08b),
      onPrimaryFixed: Color(0xff241a00),
      primaryFixedDim: Color(0xffebc246),
      onPrimaryFixedVariant: Color(0xff584400),
      secondaryFixed: Color(0xffe2e2e2),
      onSecondaryFixed: Color(0xff1a1c1c),
      secondaryFixedDim: Color(0xffc6c6c7),
      onSecondaryFixedVariant: Color(0xff454747),
      tertiaryFixed: Color(0xffdae3ee),
      onTertiaryFixed: Color(0xff141c24),
      tertiaryFixedDim: Color(0xffbec7d2),
      onTertiaryFixedVariant: Color(0xff3f4850),
      surfaceDim: Color(0xff141313),
      surfaceBright: Color(0xff3a3938),
      surfaceContainerLowest: Color(0xff0f0e0d),
      surfaceContainerLow: Color(0xff1c1b1b),
      surfaceContainer: Color(0xff201f1f),
      surfaceContainerHigh: Color(0xff2b2a29),
      surfaceContainerHighest: Color(0xff363434),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffe8ad),
      surfaceTint: Color(0xffebc246),
      onPrimary: Color(0xff3b2d00),
      primaryContainer: Color(0xfff2c94c),
      onPrimaryContainer: Color(0xff493900),
      secondary: Color(0xffffffff),
      onSecondary: Color(0xff2f3131),
      secondaryContainer: Color(0xffe2e2e2),
      onSecondaryContainer: Color(0xff464849),
      tertiary: Color(0xffd4dde8),
      onTertiary: Color(0xff1e272f),
      tertiaryContainer: Color(0xff89929c),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff141313),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffe6dbc6),
      outline: Color(0xffbab19d),
      outlineVariant: Color(0xff988f7d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe6e2e0),
      inversePrimary: Color(0xff594600),
      primaryFixed: Color(0xffffe08b),
      onPrimaryFixed: Color(0xff171000),
      primaryFixedDim: Color(0xffebc246),
      onPrimaryFixedVariant: Color(0xff443400),
      secondaryFixed: Color(0xffe2e2e2),
      onSecondaryFixed: Color(0xff0f1112),
      secondaryFixedDim: Color(0xffc6c6c7),
      onSecondaryFixedVariant: Color(0xff343637),
      tertiaryFixed: Color(0xffdae3ee),
      onTertiaryFixed: Color(0xff091219),
      tertiaryFixedDim: Color(0xffbec7d2),
      onTertiaryFixedVariant: Color(0xff2e373f),
      surfaceDim: Color(0xff141313),
      surfaceBright: Color(0xff464443),
      surfaceContainerLowest: Color(0xff080707),
      surfaceContainerLow: Color(0xff1e1d1d),
      surfaceContainer: Color(0xff292827),
      surfaceContainerHigh: Color(0xff333231),
      surfaceContainerHighest: Color(0xff3f3d3c),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffefca),
      surfaceTint: Color(0xffebc246),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xfff2c94c),
      onPrimaryContainer: Color(0xff211800),
      secondary: Color(0xffffffff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffe2e2e2),
      onSecondaryContainer: Color(0xff282a2b),
      tertiary: Color(0xffe8f1fc),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffbac4ce),
      onTertiaryContainer: Color(0xff040c13),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff141313),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xfffaefd9),
      outlineVariant: Color(0xffccc2ad),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe6e2e0),
      inversePrimary: Color(0xff594600),
      primaryFixed: Color(0xffffe08b),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffebc246),
      onPrimaryFixedVariant: Color(0xff171000),
      secondaryFixed: Color(0xffe2e2e2),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffc6c6c7),
      onSecondaryFixedVariant: Color(0xff0f1112),
      tertiaryFixed: Color(0xffdae3ee),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffbec7d2),
      onTertiaryFixedVariant: Color(0xff091219),
      surfaceDim: Color(0xff141313),
      surfaceBright: Color(0xff51504f),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff201f1f),
      surfaceContainer: Color(0xff31302f),
      surfaceContainerHigh: Color(0xff3c3b3a),
      surfaceContainerHighest: Color(0xff484645),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
