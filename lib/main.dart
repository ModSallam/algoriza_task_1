import 'package:algoriza_task1_onboarding_login_register_app/logic/logic.dart';
import 'package:algoriza_task1_onboarding_login_register_app/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Algoriza Task1',
        theme: AppTheme.themeData,
        onGenerateRoute: AppRouter.onGenerateRoute,
      ),
    );
  }
}
