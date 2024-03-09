import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reserve/src/constants/colors.dart';

class MyTextTheme {
  static TextTheme get lightTextTheme {
    return ThemeData.light().textTheme.copyWith(
          bodySmall: TextStyle(
            fontSize: 12,
            fontFamily: GoogleFonts.cabin().fontFamily,
            color: kMainFontColor,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            fontFamily: GoogleFonts.cabin().fontFamily,
            color: kMainFontColor,
          ),
          bodyLarge: TextStyle(
            fontSize: 20,
            fontFamily: GoogleFonts.cabin().fontFamily,
            color: kMainFontColor,
          ),
          headlineSmall: TextStyle(
            fontSize: 24,
            fontFamily: GoogleFonts.roboto().fontFamily,
            color: kMainFontColor,
          ),
          headlineMedium: TextStyle(
            fontSize: 32,
            fontFamily: GoogleFonts.roboto().fontFamily,
            color: kMainFontColor,
          ),
          headlineLarge: TextStyle(
            fontSize: 40,
            fontFamily: GoogleFonts.roboto().fontFamily,
            color: kMainFontColor,
          ),
        );
  }
}