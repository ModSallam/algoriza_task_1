import 'package:algoriza_task1_onboarding_login_register_app/presentation/presentation.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(height: 250),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: AuthTitle(title: 'Sign in'),
          ),
          const SizedBox(height: 30),
          const CustomTextField(
            isPhoneNumber: true,
            title: 'Phone Number',
            hint: 'Eg. 812345678',
            keyboardType: TextInputType.phone,
          ),
          const SizedBox(height: 30),
          CustomButton(
            text: 'Sign In',
            height: 60,
            padding: 20,
            width: double.infinity,
            radius: 5.0,
            fontSize: 18,
            fontWeight: FontWeight.normal,
            buttonColor: MyColors.blue,
            textColor: MyColors.white,
            onPressed: () {},
          ),
          const CustomDivider(),
          CustomButton(
            text: 'Sign with google',
            height: 60,
            padding: 20,
            width: double.infinity,
            radius: 5.0,
            fontSize: 16,
            fontWeight: FontWeight.normal,
            isIconButton: true,
            buttonColor: MyColors.blue,
            textColor: MyColors.blue,
            onPressed: () {},
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    QuestionContainer(
                      text: 'Does\'t has any account?',
                      color: MyColors.black,
                      qusetionText: 'Register here',
                      questionColor: MyColors.blue,
                      onTap: () =>
                          Navigator.pushReplacementNamed(context, '/login'),
                    ),
                    CustomText(
                      text:
                          'Use the application according to policy rules. Any kinds of violations will be subject to sanctions.',
                      color: MyColors.grey,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
