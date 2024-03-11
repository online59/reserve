import 'package:flutter/material.dart';
import 'package:reserve/src/constants/sizes.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/strings.dart';

class GradientButton extends StatelessWidget {
  const GradientButton(
      {super.key,
      required this.onPressed,
      this.width = double.infinity,
      this.height = 56});

  final VoidCallback onPressed;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        color: Pallete.primary,
        borderRadius: BorderRadius.circular(ButtonSizes.borderRadius),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          LoginStrings.signIn.toUpperCase(),
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Pallete.whiteColor,
              ),
        ),
      ),
    );
  }
}
