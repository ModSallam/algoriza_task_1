import 'package:algoriza_task1_onboarding_login_register_app/logic/logic.dart';
import 'package:algoriza_task1_onboarding_login_register_app/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: CustomButton(
                        text: 'Skip',
                        height: 50.0,
                        width: 80.0,
                        padding: 0.0,
                        radius: 35.0,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        buttonColor: MyColors.secondaryColor,
                        textColor: MyColors.black,
                        onPressed: () => Navigator.pushNamed(context, '/login'),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: PageView(
                    onPageChanged: (index) =>
                        context.read<OnboardingCubit>().onPageChanged(index),
                    children: const [
                      OnboardingPageView(
                        title: 'Get food delivery to your doorstep ASAP',
                        subTitle:
                            'We have young and professional delivery team that will bring your food as soon as possible to your doorstep.',
                        iconName: 'delivery',
                      ),
                      OnboardingPageView(
                        title: 'Buy Any Food from your favourite restaurant',
                        subTitle:
                            'We are constantly adding your favourite throughout the territory and around your area carefully selected.',
                        iconName: 'man',
                      ),
                    ],
                  ),
                ),
                BlocBuilder<OnboardingCubit, OnboardingState>(
                  builder: (context, state) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        state.index == 0
                            ? const CustomIndecator(isActive: true)
                            : const CustomIndecator(isActive: false),
                        state.index == 0
                            ? const CustomIndecator(isActive: false)
                            : const CustomIndecator(isActive: true),
                      ],
                    );
                  },
                ),
                CustomButton(
                  text: 'Get Started',
                  height: 70.0,
                  width: double.infinity,
                  radius: 10.0,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  buttonColor: MyColors.primaryColor,
                  textColor: MyColors.white,
                  onPressed: () => Navigator.pushNamed(context, '/login'),
                ),
                QuestionContainer(
                  text: 'Don\'t have an account?',
                  color: MyColors.black,
                  fontWeight: FontWeight.w600,
                  qusetionText: 'Sign Up',
                  questionColor: MyColors.primaryColor,
                  questionFontWeight: FontWeight.w600,
                  onTap: () => Navigator.pushNamed(context, '/register'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
