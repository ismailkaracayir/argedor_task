import 'package:flutter/material.dart';

final class CustomColorScheme {
  CustomColorScheme._();

  static const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF1f245c),
    onPrimary: Color(0xFF37e4fb),
    secondary: Color(0xFFdd385c), // red
    onSecondary: Color(0xFFFFFFFF), // white
    tertiary: Color(0xFF33a37c), // green
    onTertiary: Color(0xFFfff08c), // yellow
    tertiaryContainer: Color(0xFFFFD6F9),
    onTertiaryContainer: Color(0xFF2B122B),
    error: Color(0xFFBA1A1A),
    errorContainer: Color(0xFFFFDAD6),
    onError: Color(0xFFFFFFFF),
    onErrorContainer: Color(0xFF410002),
    background: Color(0xFFFEFBFF),
    onBackground: Color(0xFF1B1B1F),
    surface: Color(0xFFFEFBFF),
    onSurface: Color.fromARGB(255, 18, 18, 26),
    surfaceVariant: Color(0xFFE2E2EC),
    onSurfaceVariant: Color(0xFF45464F),
    outline: Color(0xFF757680),
    onInverseSurface: Color(0xFFF2F0F4),
    inverseSurface: Color(0xFF303034),
    inversePrimary: Color(0xFFB3C5FF),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFF3C5BA9),
    outlineVariant: Color(0xFFC5C6D0),
    scrim: Color(0xFF000000),
  );

  static const darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFF121536),
    onPrimary: Color(0xFF37e4fb),
    secondary: Color(0xFFdd385c), // red
    onSecondary: Color(0xFFFFFFFF), // white
    tertiary: Color(0xFF33a37c), // green
    onTertiary: Color(0xFFfff08c), // yellow
    tertiaryContainer: Color(0xFFFFD6F9),
    onTertiaryContainer: Color(0xFF2B122B),
    error: Color(0xFFBA1A1A),
    errorContainer: Color(0xFFFFDAD6),
    onError: Color(0xFFFFFFFF),
    onErrorContainer: Color(0xFF410002),
    background: Color(0xFFFEFBFF),
    onBackground: Color(0xFF1B1B1F),
    surface: Color(0xFFFEFBFF),
    onSurface: Color.fromARGB(255, 18, 18, 26),
    surfaceVariant: Color(0xFFE2E2EC),
    onSurfaceVariant: Color(0xFF45464F),
    outline: Color(0xFF757680),
    onInverseSurface: Color(0xFFF2F0F4),
    inverseSurface: Color(0xFF303034),
    inversePrimary: Color(0xFFB3C5FF),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFF3C5BA9),
    outlineVariant: Color(0xFFC5C6D0),
    scrim: Color(0xFF000000),
  );
}
