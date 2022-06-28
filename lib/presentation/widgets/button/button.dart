import 'package:flutter/material.dart';

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

  const CustomButton({
    Key? key,
    required this.text,
    required this.height,
    required this.width,
    required this.padding,
    required this.radius,
    required this.fontSize,
    required this.fontWeight,
    required this.buttonColor,
    required this.textColor,
    required this.onPressed,
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
            primary: buttonColor,
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeight,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
