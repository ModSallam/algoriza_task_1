import 'package:algoriza_task1_onboarding_login_register_app/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final double padding;
  final double radius;
  final double fontSize;
  final FontWeight fontWeight;
  final Color buttonColor;
  final Color textColor;
  final Function() onPressed;
  final bool isIconButton;

  const CustomButton({
    Key? key,
    required this.text,
    required this.height,
    required this.width,
    this.padding = 0.0,
    required this.radius,
    required this.fontSize,
    required this.fontWeight,
    required this.buttonColor,
    required this.textColor,
    required this.onPressed,
    this.isIconButton = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Container(
        height: height,
        width: width,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shadowColor: MyColors.blue,
            elevation: isIconButton ? 0 : 0,
            primary: isIconButton ? MyColors.transparent : buttonColor,
            shape: isIconButton
                ? RoundedRectangleBorder(
                    side: BorderSide(color: textColor, width: 1.5),
                    borderRadius: BorderRadius.circular(6),
                  )
                : null,
          ),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (isIconButton)
                SvgPicture.asset(
                  'assets/google.svg',
                  width: 24,
                ),
              if (isIconButton) const SizedBox(width: 10.0),
              Text(
                text,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  color: textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
