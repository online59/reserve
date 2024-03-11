import 'package:flutter/material.dart';
import 'package:reserve/src/constants/colors.dart';
import 'package:reserve/src/constants/sizes.dart';

class AppTextButtonTheme {
  static TextButtonThemeData lightTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: Colors.transparent,
          width: ButtonSizes.borderWidth,
        ),
        borderRadius: BorderRadius.circular(ButtonSizes.borderRadius),
      ),
    )
  );
}
