import 'package:algoriza_task1_onboarding_login_register_app/presentation/presentation.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            height: 120,
            showBackButton: true,
            onTap: () => Navigator.pop(context),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 24,
            ),
            child: AuthTitle(title: 'Register'),
          ),
          const CustomTextField(
            title: 'Email',
            hint: 'Eg. example@email.com',
            keyboardType: TextInputType.emailAddress,
          ),
          const CustomTextField(
            isPhoneNumber: true,
            title: 'Phone Number',
            hint: 'Eg. 812345678',
            keyboardType: TextInputType.phone,
          ),
          const CustomTextField(
            title: 'Password',
            hint: 'Password',
            keyboardType: TextInputType.visiblePassword,
          ),
          const SizedBox(height: 10.0),
          CustomButton(
            text: 'Register',
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
                      text: 'Has any account?',
                      color: MyColors.black,
                      qusetionText: 'Sign in here',
                      questionColor: MyColors.blue,
                      onTap: () =>
                          Navigator.pushReplacementNamed(context, '/login'),
                    ),
                    Column(
                      children: [
                        CustomText(
                          text:
                              'By registering your account, you are agree to our',
                          color: MyColors.grey,
                        ),
                        const SizedBox(height: 8),
                        CustomText(
                          text: 'terms and conditions',
                          color: MyColors.blue,
                        ),
                      ],
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
