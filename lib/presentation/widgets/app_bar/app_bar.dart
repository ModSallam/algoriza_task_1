import 'package:algoriza_task1_onboarding_login_register_app/presentation/presentation.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String image;
  final double height;
  final bool showBackButton;
  final Function()? onTap;

  const CustomAppBar({
    Key? key,
    this.image = 'assets/background.jpeg',
    required this.height,
    this.showBackButton = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          width: double.infinity,
          height: height,
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
        if (showBackButton)
          Positioned(
            top: 60,
            left: 20,
            child: CircleIconContainer(
              backgroundColor: MyColors.black,
              iconColor: MyColors.white,
              icon: Icons.arrow_back_ios_new,
              size: 20,
              onTap: showBackButton ? onTap : null,
            ),
          ),
      ],
    );
  }
}
