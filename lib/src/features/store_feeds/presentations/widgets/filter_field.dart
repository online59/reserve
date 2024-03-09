import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/sizes.dart';

class FilterField extends StatelessWidget {
  const FilterField({
    super.key,
    required this.hintText,
    this.leading,
    this.trailing,
    this.inputFormatters,
    this.controller,
  });

  final String hintText;
  final IconData? leading;
  final Widget? trailing;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        controller: controller,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Pallete.hintTextColor,
          ),
          prefixIcon: leading != null ? Icon(leading) : null,
          // suffixIcon: trailing != null ? Icon(trailing) : null,
          suffixIcon: trailing,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(ButtonSizes.borderRadius),
          ),
        ),
      ),
    );
  }
}
