import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
part 'app_bar_theme.dart';
part 'color_scheme.dart';
part 'text_theme.dart';
part 'quote_generator_colors.dart';

@immutable
class QuoteGeneratorTheme {
  static final lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: _ColorScheme._lightColorScheme,
    textTheme: _TextTheme._textLightTheme,
    fontFamily: GoogleFonts.dosis().fontFamily,
    appBarTheme: _AppBarTheme._appBarLightTheme,
    scaffoldBackgroundColor: _ColorScheme._lightColorScheme.background,
  );

  static final darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: _ColorScheme._darkColorScheme,
    textTheme: _TextTheme._textDarkTheme,
    fontFamily: GoogleFonts.dosis().fontFamily,
    appBarTheme: _AppBarTheme._appBarDarkTheme,
    scaffoldBackgroundColor: Colors.grey.shade900,
  );
}
