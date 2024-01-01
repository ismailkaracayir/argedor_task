import 'package:argedor_task/src/shared/theme/custom_color_sheme.dart';
import 'package:argedor_task/src/shared/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:google_fonts/google_fonts.dart';

final class CustomLightTheme implements CustomTheme {
  @override
  ThemeData get themeData => ThemeData(
      useMaterial3: true,
      fontFamily: GoogleFonts.roboto().fontFamily,
      colorScheme: CustomColorScheme.lightColorScheme,
      scaffoldBackgroundColor: CustomColorScheme.lightColorScheme.primary,
      iconTheme: IconThemeData(
          color: CustomColorScheme.lightColorScheme.onSecondary, size: 24.0));
}
