import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final double buttonHeight;
  final double buttonWidth;
  final Color topColor;
  final Color bottomColor;
  final String buttonTitle;

  const GradientButton({
    super.key,
    required this.buttonHeight,
    required this.buttonWidth,
    required this.topColor,
    required this.bottomColor,
    required this.buttonTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [topColor, bottomColor],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Center(
        child: Text(
          buttonTitle,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xff000000),
          ),
        ),
      ),
    );
  }
}
