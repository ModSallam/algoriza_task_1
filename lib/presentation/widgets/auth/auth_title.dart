import 'package:algoriza_task1_onboarding_login_register_app/presentation/presentation.dart';
import 'package:flutter/material.dart';

class AuthTitle extends StatelessWidget {
  final String title;
  final Function()? onTap;

  const AuthTitle({
    Key? key,
    required this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: CustomText(
            text: 'Welcome to Fashion Daily',
            color: MyColors.grey,
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: title,
              color: MyColors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            HelpContainer(onTap: onTap),
          ],
        ),
      ],
    );
  }
}
