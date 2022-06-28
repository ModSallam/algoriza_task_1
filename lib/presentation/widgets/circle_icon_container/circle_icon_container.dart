import 'package:flutter/material.dart';

class CircleIconContainer extends StatelessWidget {
  final Color backgroundColor;
  final Color iconColor;
  final IconData icon;
  final double size;
  final double radius;
  final Function()? onTap;

  const CircleIconContainer({
    Key? key,
    required this.onTap,
    required this.backgroundColor,
    required this.iconColor,
    required this.icon,
    required this.size,
    this.radius = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: radius,
        backgroundColor: backgroundColor,
        child: Icon(
          icon,
          size: size,
          color: iconColor,
        ),
      ),
    );
  }
}
