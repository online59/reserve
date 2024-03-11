import 'package:flutter/material.dart';
import 'package:reserve/src/constants/sizes.dart';

import '../../constants/colors.dart';

class AppElevatedButtonTheme {
  static ElevatedButtonThemeData get lightTheme {
    return ElevatedButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(ButtonSizes.borderRadius),
          side: const BorderSide(
            width: ButtonSizes.borderWidth,
            color: Pallete.primary,
          ),
        ),
      ),
    );
  }
}