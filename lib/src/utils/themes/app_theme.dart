import 'package:flutter/material.dart';
import 'package:reserve/src/constants/colors.dart';
import 'package:reserve/src/utils/themes/text_theme.dart';

class MyAppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Pallete.primary,
        brightness: Brightness.light,
      ),
      textTheme: MyTextTheme.lightTextTheme,
      buttonTheme: const ButtonThemeData(
        buttonColor: Pallete.primary,
        textTheme: ButtonTextTheme.primary,
      ),
    );
  }
}
