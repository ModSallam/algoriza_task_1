import 'package:algoriza_task1_onboarding_login_register_app/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingPageView extends StatelessWidget {
  final String title;
  final String subTitle;
  final String iconName;

  const OnboardingPageView({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.iconName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: '7',
              color: MyColors.indicatorColor,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
            CustomText(
              text: 'krave',
              color: MyColors.primaryColor,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
        Expanded(
          child: SvgPicture.asset('assets/$iconName.svg'),
        ),
        CustomText(
          text: title,
          color: MyColors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: CustomText(
            text: subTitle,
            color: MyColors.black.withOpacity(0.6),
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
