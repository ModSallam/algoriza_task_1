import 'package:algoriza_task1_onboarding_login_register_app/presentation/presentation.dart';
import 'package:flutter/material.dart';

class QuestionContainer extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final String qusetionText;
  final Color questionColor;
  final double qusetionFontSize;
  final FontWeight questionFontWeight;

  final Function()? onTap;

  const QuestionContainer({
    Key? key,
    required this.text,
    required this.color,
    this.fontSize = 18.0,
    this.fontWeight = FontWeight.normal,
    required this.qusetionText,
    required this.questionColor,
    this.qusetionFontSize = 18.0,
    this.questionFontWeight = FontWeight.normal,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            text: text,
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
          const SizedBox(width: 8.0),
          GestureDetector(
            onTap: onTap,
            child: CustomText(
              text: qusetionText,
              color: questionColor,
              fontSize: qusetionFontSize,
              fontWeight: questionFontWeight,
            ),
          ),
        ],
      ),
    );
  }
}
