import 'package:algoriza_task1_onboarding_login_register_app/presentation/presentation.dart';
import 'package:flutter/material.dart';

class CustomIndecator extends StatelessWidget {
  final bool isActive;

  const CustomIndecator({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 2.0,
        vertical: 30.0,
      ),
      child: Container(
        height: 7,
        width: 20,
        decoration: BoxDecoration(
          color: isActive
              ? MyColors.indicatorColor
              : MyColors.grey.withOpacity(0.5),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
