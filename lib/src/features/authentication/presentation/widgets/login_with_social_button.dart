import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reserve/src/constants/sizes.dart';

import '../../../../constants/colors.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  final String label;
  final double horizontalPadding;
  final double imageWidth;
  const SocialButton({
    super.key,
    required this.iconPath,
    required this.label,
    this.horizontalPadding = 0,
    this.imageWidth = 28,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton.icon(
        onPressed: () {},
        icon: SvgPicture.asset(
          iconPath,
          width: imageWidth,
        ),
        label: Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: DefaultPadding.large, horizontal: horizontalPadding),
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Pallete.borderColor,
              width: ButtonSizes.borderWidth,
            ),
            borderRadius: BorderRadius.circular(ButtonSizes.borderRadius),
          ),
        ),
      ),
    );
  }
}