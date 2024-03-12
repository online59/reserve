import 'package:flutter/material.dart';

class BorderCircleAvatar extends StatelessWidget {
  const BorderCircleAvatar({
    super.key,
    required this.radius,
    required this.image,
    this.borderColor,
    this.borderWidth, 
    this.fit,
  });

  final double radius;
  final String image;
  final Color? borderColor;
  final double? borderWidth;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor ?? Colors.white,
          width: borderWidth ?? 1.0,
        ),
        image: DecorationImage(
          fit: fit ?? BoxFit.cover,
          image: NetworkImage(image),
        ),
      ),
    );
  }
}
