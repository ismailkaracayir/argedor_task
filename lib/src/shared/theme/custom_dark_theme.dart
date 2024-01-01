import 'package:argedor_task/src/shared/theme/custom_color_sheme.dart';
import 'package:argedor_task/src/shared/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final class CustomDarkTheme implements CustomTheme{
  @override
  ThemeData get themeData => ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.roboto().fontFamily,
    colorScheme: CustomColorScheme.darkColorScheme,
    scaffoldBackgroundColor: CustomColorScheme.darkColorScheme.primary,
    iconTheme: IconThemeData(color:  CustomColorScheme.darkColorScheme.onSecondary,size: 24.0 )
    
    

  );

}