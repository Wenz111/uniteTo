import 'package:flutter/material.dart';

ThemeData lightThemeData() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: _lightColorScheme,
    textTheme: _lightTextTheme(base.textTheme),
    textButtonTheme: _lightTextButtonTheme(),
  );
}

TextTheme _lightTextTheme(TextTheme base) {
  return base
      .copyWith(
        headline4: base.headline4?.copyWith(
          color: brown900,
        ),
        caption: base.overline?.copyWith(
          fontWeight: FontWeight.w100,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        // displayColor: brown900,
        bodyColor: brown900,
      );
}

TextButtonThemeData _lightTextButtonTheme() {
  return TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: red800,
    ),
  );
}

const ColorScheme _lightColorScheme = ColorScheme(
  // brightness
  brightness: Brightness.light,

  // primary
  primary: pink100,
  onPrimary: brown900,
  primaryContainer: brown900,

  // secondary
  secondary: red800,
  onSecondary: brown900,
  secondaryContainer: brown900,

  // background
  background: backgroundWhite,
  onBackground: brown900,

  // surface
  surface: surfaceWhite,
  onSurface: brown900,

  // error
  error: errorRed,
  onError: surfaceWhite,
);

const Color pink50 = Color(0xFFFEEAE6);
const Color pink100 = Color(0xFFFEDBD0);
const Color pink300 = Color(0xFFFBB8AC);
const Color pink400 = Color(0xFFEAA4A4);

const Color brown600 = Color(0xFF7D4F52);
const Color brown900 = Color(0xFF442B2D);

const Color surfaceWhite = Color(0xFFFFFBFA);
const Color backgroundWhite = Colors.white;

const Color errorRed = Color(0xFFC5032B);

const Color red800 = Color(0xFFC5113B);
