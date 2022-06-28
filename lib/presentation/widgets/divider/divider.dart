import 'package:algoriza_task1_onboarding_login_register_app/presentation/presentation.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: MyColors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomText(
              text: 'Or',
              color: MyColors.grey,
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
          ),
          Expanded(
            child: Divider(
              color: MyColors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
