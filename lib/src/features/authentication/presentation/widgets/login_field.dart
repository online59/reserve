import 'package:flutter/material.dart';
import 'package:reserve/src/constants/sizes.dart';

import '../../../../constants/colors.dart';

class LoginField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isObscure;

  const LoginField({
    super.key,
    required this.hintText,
    required this.controller,
    this.isObscure = false,
  });

  @override
  Widget build(BuildContext context) {

    return TextFormField(
      obscureText: isObscure,
      controller: controller,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(DefaultPadding.large),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Pallete.borderColor,
            width: ButtonSizes.borderWidth,
          ),
          borderRadius: BorderRadius.circular(ButtonSizes.borderRadius),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Pallete.gradient2,
            width: ButtonSizes.borderWidth,
          ),
          borderRadius: BorderRadius.circular(ButtonSizes.borderRadius),
        ),
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Pallete.hintTextColor,
            ),
      ),
    );
  }
}
