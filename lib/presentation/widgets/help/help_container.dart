import 'package:algoriza_task1_onboarding_login_register_app/presentation/presentation.dart';
import 'package:flutter/material.dart';

class HelpContainer extends StatelessWidget {
  final Function()? onTap;

  const HelpContainer({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0, left: 8.0),
          child: CustomText(
            text: 'Help',
            color: MyColors.blue,
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        CircleIconContainer(
          onTap: onTap,
          backgroundColor: MyColors.blue,
          iconColor: MyColors.white,
          icon: Icons.question_mark,
          size: 14,
          radius: 10,
        ),
      ],
    );
  }
}
